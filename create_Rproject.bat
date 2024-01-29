@echo off
set /p foldername="Introduce el nombre de la carpeta: "
set targetpath="C:\Users\UserPath\%foldername%"
if not exist %targetpath% (
    mkdir %targetpath%
    echo Carpeta creada en %targetpath%

    mkdir %targetpath%/data
    mkdir %targetpath%/output
    mkdir %targetpath%/rsc

REM Aquí puedes añadir, quitar o modificar las carpetas dentro del proyecto. 

) else (
    echo La carpeta ya existe en %targetpath%
)

echo "Creating .Rproj file..."

REM Parámetros para crear el Rproject
(
echo Version: 1.0
echo RestoreWorkspace: Default
echo SaveWorkspace: Default
echo AlwaysSaveHistory: Default
) > %targetpath%\%foldername%.Rproj

echo Proyecto de R creado en %targetpath%

pause
