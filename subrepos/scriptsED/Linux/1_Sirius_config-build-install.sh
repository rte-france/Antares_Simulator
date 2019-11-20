source $(dirname $0)/../config.sh

#configuring
cmake \
	-G "${CHOSEN_COMPILER}" \
	-B ${SIRIUS_BUILD_DIR} \
	-DCMAKE_INSTALL_PREFIX="$PWD/subrepos/Sirius/build/install" \
	-S ${SIRIUS_SRC_PATH}

#building and installing
cmake --build ${SIRIUS_BUILD_DIR} --config Release --target install
