/*
** Copyright 2007-2018 RTE
** Authors: Antares_Simulator Team
**
** This file is part of Antares_Simulator.
**
** Antares_Simulator is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** There are special exceptions to the terms and conditions of the
** license as they are applied to this software. View the full text of
** the exceptions in file COPYING.txt in the directory of this software
** distribution
**
** Antares_Simulator is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with Antares_Simulator. If not, see <http://www.gnu.org/licenses/>.
**
** SPDX-License-Identifier: licenceRef-GPL3_WITH_RTE-Exceptions
*/

#include "timeseries.h"
#include "../study.h"


using namespace Yuni;



namespace Antares
{
namespace Data
{
namespace ScenarioBuilder
{

	enum
	{
		maxErrors = 20,
	};



	bool TSNumberRules::reset(const Study& study)
	{
		assert(&study != nullptr);

		const uint nbYears = study.parameters.nbYears;
		if (pTSType == timeSeriesThermal)
		{
			assert(pArea != nullptr);

			// If an area is available, it can only be an overlay for thermal timeseries
			// WARNING: The total number of clusters may vary if used from the
			//   solver or not.
			// WARNING: At this point in time, the variable pArea->thermal.clusterCount
			//   might not be valid (because not really initialized yet)
			uint clusterCount = (study.usedByTheSolver)
				? (pArea->thermal.list.size() + pArea->thermal.mustrunList.size())
				: pArea->thermal.list.size();
			// Resize
			pTSNumberRules.reset(clusterCount, nbYears);
		}
		else
		{
			// Standard timeseries (load, wind, ...)
			pTSNumberRules.reset(study.areas.size(), nbYears);
		}
		return true;
	}





	bool TSNumberRules::loadFromStudy(const Study& study)
	{
		assert(&study != nullptr);

		const uint nbYears = study.parameters.nbYears;
		if (pTSType == timeSeriesThermal)
		{
			assert(pArea != nullptr);

			// If an area is available, it can only be an overlay for thermal timeseries
			// WARNING: The total number of clusters may vary if used from the
			//   solver or not.
			const uint clusterCount = (study.usedByTheSolver)
				? pArea->thermal.clusterCount : pArea->thermal.list.size();
			// Resize
			pTSNumberRules.reset(clusterCount, nbYears);
		}
		else
		{
			// Standard timeseries (load, wind, ...)
			pTSNumberRules.reset(study.areas.size(), nbYears);
		}
		return true;
	}



	void TSNumberRules::saveToINIFile(const Study& study, Yuni::IO::File::Stream& file) const
	{
		// Prefix
		CString<512, false> prefix;

		if (pTSType != timeSeriesThermal)
		{
			switch (pTSType)
			{
				case timeSeriesLoad:  prefix += "l,";break;
				case timeSeriesWind:  prefix += "w,";break;
				case timeSeriesHydro: prefix += "h,";break;
				case timeSeriesSolar: prefix += "s,";break;
				case timeSeriesThermal:break;
				case timeSeriesCount:break;
			}

			// Foreach year
			assert(pTSNumberRules.width == study.areas.size());
			for (uint index = 0; index != pTSNumberRules.width; ++index)
			{
				// alias to the current column
				const MatrixType::ColumnType& col = pTSNumberRules[index];
				// Foreach area...
				for (uint y = 0; y != pTSNumberRules.height; ++y)
				{
					const MatrixType::Type  value = col[y];
					// Equals to zero means 'auto', which is the default mode
					if (!value)
						continue;
					assert(index < study.areas.size());
					file << prefix << study.areas.byIndex[index]->id << ',' << y << " = " << value << '\n';
				}
			}
		}
		else
		{
			// Thermal
			prefix += "t,";
			if (!pArea)
				return;

			// Foreach year
			# ifndef NDEBUG
			if (pTSNumberRules.width)
			{
				assert(pTSNumberRules.width == pArea->thermal.list.size());
			}
			# endif
			for (uint index = 0; index != pTSNumberRules.width; ++index)
			{
				// alias to the current column
				const MatrixType::ColumnType& col = pTSNumberRules[index];
				// Foreach thermal cluster...
				for (uint y = 0; y != pTSNumberRules.height; ++y)
				{
					const uint val = get(pArea->thermal.list.byIndex[index], y);
					//const MatrixType::Type  value = col[y];
					// Equals to zero means 'auto', which is the default mode
					if (!val)
						continue;
					file << prefix << pArea->id << "," << y << ',' << pArea->thermal.list.byIndex[index]->id()
						<< " = " << val << '\n';
				}
			}
		}
	}



	namespace // anonymous
	{

		template<class D>
		static inline bool
		CheckValidity(uint value, const D& data, uint tsGenMax)
		{
			// When the TS-Generators are not used
			return (!tsGenMax)
				?  (value < data.series.width) : (value < tsGenMax);
		}

		template<>
		inline bool
		CheckValidity<Data::DataSeriesHydro>(uint value, const Data::DataSeriesHydro& data, uint tsGenMax)
		{
			// When the TS-Generators are not used
			return (!tsGenMax)
				? (value < data.count) : (value < tsGenMax);
		}


		template<class StringT, class D>
		static void
		ApplyToMatrix(uint& errors, StringT& logprefix, D& data,
			const TSNumberRules::MatrixType::ColumnType& years, uint tsGenMax)
		{
			// In this case, m.height represents the total number of years
			const uint nbYears = data.timeseriesNumbers.height;
			// The matrix m has only one column
			assert(data.timeseriesNumbers.width == 1);
			typename Matrix<uint32>::ColumnType& target = data.timeseriesNumbers[0];

			for (uint y = 0; y != nbYears; ++y)
			{
				if (years[y] != 0)
				{
					// The new TS number
					uint tsNum = years[y] - 1;

					// When the TS-Generators are not used
					if (!CheckValidity(tsNum, data, tsGenMax))
					{
						if (errors <= maxErrors)
						{
							if (++errors == maxErrors)
								logs.warning() << "scenario-builder: ... (skipped)";
							else
								logs.warning() << "scenario-builder: " << logprefix << "value out of bounds for the year " << (y + 1);
						}
						continue;
					}
					// Ok, assign. The value provided by the interface is user-friendly
					// and starts from 1.
					target[y] = tsNum;
				}
			}
		}

	} // anonymous namespace





	void TSNumberRules::apply(const Study& study)
	{
		CString<512, false> logprefix;
		// Errors
		uint errors = 0;

		// General data
		auto& parameters = study.parameters;


		if (pTSType != timeSeriesThermal)
		{
			// The total number of areas;
			const uint areaCount = study.areas.size();

			const bool tsGenLoad  = (0 != (parameters.timeSeriesToGenerate & timeSeriesLoad));
			const bool tsGenWind  = (0 != (parameters.timeSeriesToGenerate & timeSeriesWind));
			const bool tsGenHydro = (0 != (parameters.timeSeriesToGenerate & timeSeriesHydro));
			const bool tsGenSolar = (0 != (parameters.timeSeriesToGenerate & timeSeriesSolar));

			const uint tsGenCountLoad  = tsGenLoad  ? parameters.nbTimeSeriesLoad  : 0u;
			const uint tsGenCountWind  = tsGenWind  ? parameters.nbTimeSeriesWind  : 0u;
			const uint tsGenCountSolar = tsGenSolar ? parameters.nbTimeSeriesSolar : 0u;
			const uint tsGenCountHydro = tsGenHydro ? parameters.nbTimeSeriesHydro : 0u;

			for (uint areaIndex = 0; areaIndex != areaCount; ++areaIndex)
			{
				// Alias to the current area
				Area& area = *(study.areas.byIndex[areaIndex]);
				// alias to the current column
				assert(areaIndex < pTSNumberRules.width);
				const MatrixType::ColumnType& col = pTSNumberRules[areaIndex];

				switch (pTSType)
				{
					case timeSeriesLoad:
						{
							logprefix.clear() << "Load: Area '" << area.name << "': ";
							ApplyToMatrix(errors, logprefix, *area.load.series, col, tsGenCountLoad);
							break;
						}
					case timeSeriesWind:
						{
							logprefix.clear() << "Wind: Area '" << area.name << "': ";
							ApplyToMatrix(errors, logprefix, *area.wind.series, col, tsGenCountWind);
							break;
						}
					case timeSeriesSolar:
						{
							logprefix.clear() << "Solar: Area '" << area.name << "': ";
							ApplyToMatrix(errors, logprefix, *area.solar.series, col, tsGenCountSolar);
							break;
						}
					case timeSeriesHydro:
						{
							logprefix.clear() << "Hydro: Area '" << area.name << "': ";
							ApplyToMatrix(errors, logprefix, *area.hydro.series, col, tsGenCountHydro);
							break;
						}
					case timeSeriesThermal:
					case timeSeriesCount:
						break;
				}
			}
		}
		else
		{
			// Alias to the current area
			assert(pArea != nullptr);
			assert(pArea->index < study.areas.size());
			Area& area = *(study.areas.byIndex[pArea->index]);
			// The total number of clusters for the area
			// WARNING: We may have some thermal clusters with the `mustrun` option
			uint clusterCount = area.thermal.clusterCount;

			bool tsGenThermal  = (0 != (parameters.timeSeriesToGenerate & timeSeriesThermal));
			uint tsGenCountThermal  = tsGenThermal  ? parameters.nbTimeSeriesThermal  : 0u;

			for (uint clusterIndex = 0; clusterIndex != clusterCount; ++clusterIndex)
			{
				auto& cluster = *(area.thermal.clusters[clusterIndex]);
				// alias to the current column
				assert(clusterIndex < pTSNumberRules.width);
				auto& col = pTSNumberRules[clusterIndex];

				logprefix.clear() << "Thermal: Area '" << area.name << "', cluster: '" << cluster.name() << "': ";
				ApplyToMatrix(errors, logprefix, *cluster.series, col, tsGenCountThermal);
			}
		}
	}






} // namespace ScenarioBuilder
} // namespace Data
} // namespace Antares

