source $(dirname $0)/config.sh

SIRIUS_PATH="subrepos/Sirius"

cmake -G "${CHOSEN_COMPILER}" -B ${SIRIUS_PATH}/build -S ${SIRIUS_PATH}/src
cmake --build ${SIRIUS_PATH}/build --config Release --target INSTALL
