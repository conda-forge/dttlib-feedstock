#!/bin/sh

set LIBCLANG_PATH=%PREFIX%/lib
set C_INCLUDE_PATH=%PREFIX%/include
set CPLUS_INCLUDE_PATH=%PREFIX%/include
set PYTHONIOENCODING="utf-8"
set RUST_BACKTRACE=1


%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
if errorlevel 1 exit 1

