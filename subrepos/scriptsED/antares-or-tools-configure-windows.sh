source $(dirname $0)/utils.sh

export ORTOOLSDEPDIR="C:/Dev/RTE/ortoolsDepInstall"
export SIRIUSDIR="C:/Dev/RTE/2019/SiriusAntaresV7"
export CPLEXDIR="C:/Program Files/IBM/ILOG/CPLEX_Studio127/cplex"
export ORTOOLSINSTALLDIR="C:/Dev/RTE/rte_dev_sirius/ortools_install_dir"

lookForLib "${ORTOOLSDEPDIR}" "Ortools pre-build dependencies" "/lib/glog.lib"
lookForLib "${SIRIUSDIR}" "Sirius lib" "lib/Release/bib_solveur.dll"
#lookForLib "${CPLEXDIR}" "Cplex lib" "/lib/x64_windows_vs2015/stat_mda/cplex1270.lib"
lookForLib "${ORTOOLSINSTALLDIR}" "Ortools lib" "/lib/ortools.lib"


cmake -G "Visual Studio 15 2017 Win64" \
	-DORTOOLS_INSTALL_DIR="${ORTOOLSINSTALLDIR}" -DLIBS_INSTALL_DIR="${ORTOOLSDEPDIR}"\
	-DSIRIUSDIR="${SIRIUSDIR}" -DXPRESSDIR="${XPRESSDIR}"\
	-DCMAKE_BUILD_TYPE=release .
	#-DCPLEXDIR="${CPLEXDIR}"