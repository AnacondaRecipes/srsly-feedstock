@echo on

rd /q /s "%SRC_DIR%\srsly\cloudpickle"
if errorlevel 1 exit 1
rd /q /s "%SRC_DIR%\srsly\ujson"
if errorlevel 1 exit 1
rd /q /s "%SRC_DIR%\srsly\ruamel_yaml"
if errorlevel 1 exit 1

@REM Won`t run tests for these modules, they are tested in their meta.yaml recipes:
rd /q /s "%SRC_DIR%\srsly\tests\cloudpickle"
if errorlevel 1 exit 1
rd /q /s "%SRC_DIR%\srsly\tests\ujson"
if errorlevel 1 exit 1
rd /q /s "%SRC_DIR%\srsly\tests\ruamel_yaml"
if errorlevel 1 exit 1

%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1



