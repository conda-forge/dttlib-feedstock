export LIBCLANG_PATH=${PREFIX}/lib
export C_INCLUDE_PATH=${PREFIX}/include
export CPLUS_INCLUDE_PATH=${PREFIX}/include

if [[ ${target_platform} == "osx-arm64" ]]
then
	export PYO3_CROSS_LIB_DIR=${PREFIX}/lib
	export RUSTFLAGS="-C linker=${CC} -C link-arg=-Wl,-undefined,dynamic_lookup"
fi

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml                                  
${PYTHON} -m pip install -v --use-pep517 --no-deps --no-build-isolation .                

