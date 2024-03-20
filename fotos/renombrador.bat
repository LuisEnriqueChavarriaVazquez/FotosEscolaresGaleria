@echo off
setlocal EnableDelayedExpansion

REM Inicializa el contador
set /a Contador=1

REM Obtiene el directorio actual donde se ejecuta el script
set "Directorio=%cd%"

REM Itera a través de todos los archivos en el directorio actual
for %%f in ("%Directorio%\*") do (
    REM Verifica si la extensión del archivo es .bat; si lo es, salta al siguiente archivo
    if "%%~xf" neq ".bat" (
        REM Renombra el archivo actual al número de contador actual, manteniendo la extensión del archivo
        ren "%%f" "!Contador!%%~xf"
        REM Incrementa el contador
        set /a Contador+=1
    )
)

echo Proceso completado.
pause
