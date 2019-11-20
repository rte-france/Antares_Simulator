export CHOSEN_COMPILER="Unix Makefiles"

# OR-Tools flags
export ORTOOLS_BUILD_DEPENDENCIES_MP="OFF" # activate parallel build of dependencies if possible (/MP)
export ORTOOLS_PYTHON_SWITCH="OFF" # build python version of OR-Tools
export ORTOOLS_TESTING_SWITCH="OFF" # build and run tests after building OR-Tools

export ORTOOLS_SIRIUS_SWITCH="ON" # activate Sirius interface
export ORTOOLS_XPRESS_SWITCH="OFF" # activate Xpress interface
export ORTOOLS_CPLEX_SWITCH="OFF"  # activate Cplex interface

# Pathes to extern solver installs
#export CPLEXDIR="C:/Program Files/IBM/ILOG/CPLEX_Studio127/cplex"
#export XPRESSDIR="C:/xpressmp"

####                                ####
#### DO NOT CHANGE BELOW THIS POINT ####
####                                ####

# Sirius variables
export SIRIUS_SRC_PATH="$PWD/subrepos/Sirius/src"
export SIRIUS_BUILD_DIR="$PWD/subrepos/Sirius/build"
export SIRIUS_INSTALL_DIR="$PWD/subrepos/Sirius/build/install"

# OR-Tools variables
export ORTOOLS_SRC_PATH="$PWD/subrepos/OR-Tools"
export ORTOOLS_BUILD_PATH="$PWD/subrepos/OR-Tools/build"
export ORTOOLS_INSTALL_PATH="$PWD/subrepos/OR-Tools/install"
export ORTOOLS_DEPENDENCIES_INSTALL_PATH="${ORTOOLS_BUILD_PATH}/dependencies/install"

export ANTARES_SRC_PATH="$PWD/src"
export ANTARES_BUILD_PATH="$PWD/src"

source $(dirname $0)/../utils.sh
