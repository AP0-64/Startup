@echo off
title Launcher B-FLOW / Jeux
color 0A

:MENU
cls
echo ======================================
echo           CHOISIS UNE OPTION
echo ======================================
echo [1] - B-FLOW (WEB)
echo [2] - B-FLOW (Mobile)
echo [3] - VS Code + Opera GX
echo [4] - Opera GX
echo [5] - Celeste
echo [6] - Cities Skylines 2
echo [7] - Project 64
echo [8] - Geometry Dash
echo [0] - Quitter
echo ======================================
set /p choice=Ton choix : 

rem Traitement des choix
if "%choice%"=="1" goto B_FLOW_WEB
if "%choice%"=="2" goto B_FLOW_MOB
if "%choice%"=="3" goto VS_CODE_ET_OPERA_GX
if "%choice%"=="4" goto OPERA_GX
if "%choice%"=="5" goto CELESTE
if "%choice%"=="6" goto CITIES_SKYLINES_II
if "%choice%"=="7" goto PROJECT_64
if "%choice%"=="8" goto GEOMETRY_DASH
if "%choice%"=="0" exit

echo Option invalide. Appuie sur une touche pour réessayer.
pause >nul
goto MENU

:B_FLOW_WEB
call :LaunchCommon
goto END

:B_FLOW_MOB
call :LaunchCommon
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe"
goto END

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

:LaunchCommon
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
exit /b

:END
exit
