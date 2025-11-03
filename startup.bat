@echo off
chcp 65001 >nul
title Lancement des applications
color 0A

:MENU
cls
echo ########################################
echo ####       CHOISIS UNE OPTION       ####
echo ########################################
echo #                                      #
echo ################# Code #################
echo #                                      #
echo # [1] - VS Code                        #
echo # [2] - VS Code et Docker              #
echo # [3] - VS Code et Android Studio      #
echo #                                      #
echo ################# Jeux #################
echo #                                      #
echo # [4] - Celeste                        #
echo # [5] - Cities Skylines II             #
echo # [6] - Project64                      #
echo # [7] - Geometry Dash                  #
echo #                                      #
echo ################ Autres ################
echo #                                      #
echo # [8] - Opera GX                       #
echo # [0] - Quitter                        #
echo #                                      #
echo ########################################
echo.
set /p choice=Ton choix : 

if "%choice%"=="1" goto VS_CODE_ET_OPERA_GX
if "%choice%"=="2" goto VS_CODE_ET_DOCKER
if "%choice%"=="3" goto VS_CODE_ET_ANDROID_STUDIO
if "%choice%"=="4" goto CELESTE
if "%choice%"=="5" goto CITIES_SKYLINES_II
if "%choice%"=="6" goto PROJECT_64
if "%choice%"=="7" goto GEOMETRY_DASH
if "%choice%"=="8" goto OPERA_GX
if "%choice%"=="0" exit

goto MENU

:VS_CODE_ET_OPERA_GX
call :runApp "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe" --disable-updates
call :OperaGX
goto END

:VS_CODE_ET_DOCKER
call :runApp "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe" --disable-updates
call :runApp "C:\Program Files\Docker\Docker\Docker Desktop.exe"
call :OperaGX
goto END

:VS_CODE_ET_ANDROID_STUDIO
call :runApp "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe" --disable-updates
call :runApp "C:\Program Files\Docker\Docker\Docker Desktop.exe"
call :runApp "C:\Program Files\Android\Android Studio\bin\studio64.exe"
call :OperaGX
goto END

:CELESTE
call :runApp "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Celeste.url"
goto END

:CITIES_SKYLINES_II
call :runApp "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Cities Skylines II.url"
goto END

:PROJECT_64
call :runApp "C:\Program Files (x86)\Project64 3.0\Project64.exe"
call :OperaGX
goto END

:GEOMETRY_DASH
call :runApp "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Geometry Dash.url"
goto END

:OPERA_GX
call :OperaGX
goto END

:OperaGX
tasklist /FI "IMAGENAME eq opera.exe" | find /I "opera.exe" >nul
if errorlevel 1 (
    call :runApp "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
)
exit /b

:runApp
rem Usage: call :runApp "C:\chemin\vers\app.exe" [args...]
set "APP=%~1"
shift
set "ARGS=%*"
if exist "%APP%" (
    if "%ARGS%"=="" (
        start "" "%APP%"
    ) else (
        start "" "%APP%" %ARGS%
    )
) else (
    echo Fichier non trouve: %APP%
)
exit /b

:END
exit
