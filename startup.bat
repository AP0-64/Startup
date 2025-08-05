@echo off
chcp 65001 >nul
title Lancement des applications
color 0A

:MENU
cls
echo ======================================
echo           CHOISIS UNE OPTION
echo ======================================
echo [1] - VS Code
echo [2] - Blogtor
echo [3] - Opera GX
echo [4] - Celeste
echo [5] - Cities Skylines II
echo [6] - Project64
echo [7] - Geometry Dash
echo [0] - Quitter
echo ======================================
set /p choice=Ton choix : 

if "%choice%"=="1" goto VS_CODE_ET_OPERA_GX
if "%choice%"=="2" goto BLOGTOR
if "%choice%"=="3" goto OPERA_GX
if "%choice%"=="4" goto CELESTE
if "%choice%"=="5" goto CITIES_SKYLINES_II
if "%choice%"=="6" goto PROJECT_64
if "%choice%"=="7" goto GEOMETRY_DASH
if "%choice%"=="0" exit

goto MENU

:VS_CODE_ET_OPERA_GX
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe" --disable-updates
call :OperaGX
goto END

:BLOGTOR
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe" --disable-updates
start "" "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"
call :OperaGX
goto END

:OPERA_GX
call :OperaGX
goto END

:CELESTE
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Celeste.url"
goto END

:CITIES_SKYLINES_II
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Cities Skylines II.url"
goto END

:PROJECT_64
start "" "C:\Program Files (x86)\Project64 3.0\Project64.exe"
call :OperaGX
goto END

:GEOMETRY_DASH
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Geometry Dash.url"
goto END

:OperaGX
tasklist /FI "IMAGENAME eq opera.exe" | find /I "opera.exe" >nul
if errorlevel 1 (
    start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
)
exit /b

:END
exit
