
set LIBCLANG_PATH=%LIBRARY_PREFIX%\bin
set PYO3_PYTHON=%PYTHON%
set C_INCLUDE_PATH=%PREFIX%\Library\include
set CPLUS_INCLUDE_PATH=%PREFIX%\Library\include
set PYTHONIOENCODING="utf-8"
set RUST_BACKTRACE=1

echo LIBCLANG_PATH=%LIBCLANG_PATH%

echo "++++++++++++++++++"
dir /s %PREFIX%\*clang*


%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
if errorlevel 1 exit 1

