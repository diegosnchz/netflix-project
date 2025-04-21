@echo off
REM activate_env.bat: Activate the Python virtual environment
SETLOCAL
REM Resolve the directory of this script (with trailing backslash)
SET "SCRIPT_DIR=%~dp0"
REM Check for the activation script in Scripts folder
IF EXIST "%SCRIPT_DIR%Scripts\activate.bat" (
    CALL "%SCRIPT_DIR%Scripts\activate.bat"
) ELSE (
    ECHO Activation script not found in "%SCRIPT_DIR%Scripts".
)
ENDLOCAL