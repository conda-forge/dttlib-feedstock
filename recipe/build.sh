#!/bin/sh

#export LIBCLANG_PATH=${PREFIX}/lib
export C_INCLUDE_PATH=${PREFIX}/include
export CPLUS_INCLUDE_PATH=${PREFIX}/include
#export LIBRARY_PATH=${PREFIX}/lib
# export LDFLAGS="${LDFLAGS} -L${PREFIX}/lib ${PREFIX}/lib/python3.12/config-3.12-darwin"
# export RUSTFLAGS="${RUSTFLAGS} -L${PREFIX/lib}"
# find ${PREFIX} -name 'libpython*'
# For macOS cross-compilation, point to the correct Python library
# export PYO3_CROSS_LIB_DIR="${PREFIX}/lib"

#if [[ ${target_platform} =~ .*linux.* ]]; then
#    ln -sf ${PREFIX}/lib/libglib-2.0.so.0 ${PREFIX}/lib/libglib-2.0.so
#fi
#./gen_stub


echo "****** LIBINFO ******"
file -L ${PREFIX}/libpython*

$PYTHON -m pip install . -vv --no-deps --no-build-isolation

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

