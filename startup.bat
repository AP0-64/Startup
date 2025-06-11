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

if "%choice%"=="1" goto BFLOW_WEB
if "%choice%"=="2" goto BFLOW_MOB
if "%choice%"=="3" goto VS_OPERA
if "%choice%"=="4" goto SKYLINES
if "%choice%"=="5" goto GEOMETRY
if "%choice%"=="6" goto PROJECT64
if "%choice%"=="7" goto OPERA
if "%choice%"=="0" exit
goto MENU

:BFLOW_WEB
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
goto END

:BFLOW_MOB
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
start "" "C:\Program Files\Android\Android Studio\bin\studio64.exe"
goto END

:VS_OPERA
start "" "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:SKYLINES
start "" "C:\Users\berti\OneDrive\Bureau\Cities Skylines II.url"
goto END

:GEOMETRY
start "" "C:\Users\berti\OneDrive\Bureau\Geometry Dash.url"
goto END

:PROJECT64
start "" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Project64 2.3\Project64.lnk"
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:OPERA
start "" "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
goto END

:END
exit
