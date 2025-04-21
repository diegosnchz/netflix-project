@echo off
ECHO ===================================================
ECHO      Activando el entorno virtual de Python
ECHO ===================================================

SET "SCRIPT_DIR=%~dp0"
SET "ACTIVATE_SCRIPT=%SCRIPT_DIR%Scripts\activate.bat"

IF NOT EXIST "%ACTIVATE_SCRIPT%" (
    ECHO ERROR: No se encontro el script de activacion en:
    ECHO %ACTIVATE_SCRIPT%
    ECHO.
    ECHO Verifica que la estructura del entorno virtual sea correcta.
    GOTO :END
)

ECHO Ejecutando: %ACTIVATE_SCRIPT%
CALL "%ACTIVATE_SCRIPT%"

IF %ERRORLEVEL% NEQ 0 (
    ECHO ERROR: No se pudo activar el entorno virtual.
    ECHO Codigo de error: %ERRORLEVEL%
) ELSE (
    ECHO.
    ECHO Entorno virtual activado correctamente!
    ECHO.
    ECHO Antes de activar el entorno, puede que no aparezca el indicador "(steam-price)"
    ECHO en el prompt de la terminal, pero el entorno virtual está funcionando.
    ECHO.
    ECHO Información del Python activo:
    where python
    python -c "import sys; print(f'Versión de Python: {sys.version}')"
    ECHO.
    ECHO Usa 'deactivate' para salir del entorno virtual.
)

:END
ECHO.
ECHO Presiona cualquier tecla para cerrar esta ventana...
PAUSE > NUL