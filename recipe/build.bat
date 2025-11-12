#!/bin/sh

set LIBCLANG_PATH=%PREFIX%/lib
set C_INCLUDE_PATH=%PREFIX%/include
set CPLUS_INCLUDE_PATH=%PREFIX%/include


$PYTHON -m pip install . -vv --no-deps --no-build-isolation

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml

