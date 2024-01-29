# R-Project-structure-creator

Este proyecto es un script de Windows Batch que permite al usuario crear una estructura de carpetas específica y un archivo .Rproj en una ubicación determinada.

## Funcionalidad

El script realiza las siguientes acciones:

1. Pide al usuario que introduzca el nombre de la carpeta a crear.
2. Comprueba si la carpeta ya existe en la ruta especificada.
3. Si la carpeta no existe, crea la carpeta junto con subcarpetas adicionales (`data`, `output`, `rsc`). (Esto se puede modificar a gusto, tiene la estructura que utilizo generalmente).
4. Crea un archivo .Rproj con configuraciones predeterminadas en la carpeta principal.

## Código

```batch
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
```

## Uso

Para usar este script, simplemente ejecute el archivo .bat y siga las instrucciones en pantalla para ingresar el nombre de la carpeta deseada. El script creará la estructura de carpetas y el archivo .Rproj en la ubicación especificada. 

>Tip: puedes usar un alias para ejecutar el archivo .bat



## Nota
> Este script está diseñado para funcionar en un entorno Windows y requiere permisos de administrador para crear las carpetas y archivos. 
