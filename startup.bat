@echo off
title Launcher B-FLOW / Jeux
color 0A

:MENU
cls
echo ===============================
echo         CHOISIS UNE OPTION
echo ===============================
echo 1 - B-FLOW (WEB)
echo 2 - B-FLOW (Mobile)
echo 3 - VS Code
echo 4 - Cities Skylines 2
echo 5 - Geometry Dash
echo 6 - Project 64
echo 7 - Opera GX
echo 0 - Quitter
echo ===============================
set /p choice=Ton choix : 

if "%choice%"=="1" goto B_FLOW_WEB
if "%choice%"=="2" goto B_FLOW_MOB
if "%choice%"=="3" goto VS_CODE_ET_OPERA_GX
if "%choice%"=="4" goto CITIES_SKYLINES_II
if "%choice%"=="5" goto GEOMETRY_DASH
if "%choice%"=="6" goto PROJECT_64
if "%choice%"=="7" goto OPERA_GX
if "%choice%"=="0" exit
goto MENU

:B-FLOW_WEB
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
goto END

:B-FLOW_MOB
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe"
goto END

:VS_CODE_ET_OPERA_GX
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:CITIES_SKYLINES_II
start "" "C:\Users\berti\OneDrive\Bureau\Cities Skylines II.url"
goto END

:GEOMETRY_DASH
start "" "C:\Users\berti\OneDrive\Bureau\Geometry Dash.url"
goto END

:PROJECT_64
start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Project64 2.3\Project64.lnk"
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:OPERA_GX
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:END
exit
