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
echo [2] - Opera GX
echo [3] - Celeste
echo [4] - Cities Skylines II
echo [5] - Project64
echo [6] - Geometry Dash
echo [0] - Quitter
echo ======================================
set /p choice=Ton choix : 

if "%choice%"=="1" goto VS_CODE_ET_OPERA_GX
if "%choice%"=="2" goto OPERA_GX
if "%choice%"=="3" goto CELESTE
if "%choice%"=="4" goto CITIES_SKYLINES_II
if "%choice%"=="5" goto PROJECT_64
if "%choice%"=="6" goto GEOMETRY_DASH
if "%choice%"=="0" exit

goto MENU

:VS_CODE_ET_OPERA_GX
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
goto END

:OPERA_GX
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:CELESTE
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Celeste.url"
goto END

:CITIES_SKYLINES_II
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Cities Skylines II.url"
goto END

:PROJECT_64
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
start "" "C:\Program Files (x86)\Project64 3.0\Project64.exe"
goto END

:GEOMETRY_DASH
start "" "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Geometry Dash.url"
goto END

:END
exit
