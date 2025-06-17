@echo off
setLocal EnableDelayedExpansion
title Lanceur Multi-Apps
color 0A

:: === Chemins des programmes ===
set "app1=C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
set "app2=C:\Program Files\Docker\Docker\Docker Desktop.exe"
set "app3=C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
set "app4=C:\Program Files\Android\Android Studio\bin\studio64.exe"
set "app6=C:\Program Files (x86)\Project64 3.0\Project64.exe"

:: === Noms des processus ===
set "procVSCode=Code"
set "procDocker=Docker Desktop.exe"
set "procOpera=opera"
set "procAndroid=studio64"
set "procProject64=Project64"

:: === Menu de lancement ===
:MENU
cls
echo =====================================
echo           MENU DE LANCEMENT
echo =====================================
echo Tape les numéros des apps à lancer (ex: 14 ou 231)
echo.
echo 1 - B-FLOW (WEB)
echo 2 - B-FLOW (Mobile)
echo 3 - VS Code
echo 4 - Cities Skylines 2
echo 5 - Opera GX
echo 6 - Project 64
echo 7 - Geometry Dash
echo 0 - Quitter
echo =====================================
set /p choice=Ton choix : 

:: === Arrête le programme ===
if "%choice%"=="0" exit

:: === Supprimer les doublons ===
set "cleaned="
for %%C in (1 2 3 4 5 6 7) do (
    echo %choice% | find "%%C" >nul
    if not errorlevel 1 (
        echo !cleaned! | find "%%C" >nul
        if errorlevel 1 set "cleaned=!cleaned!%%C"
    )
)

cls
echo ========== Vérification & Lancement ==========
:LaunchIfNotRunning
tasklist /FI "IMAGENAME eq %1.exe" | find /I "%1.exe" >nul
if errorlevel 1 (
    echo → Lancement de %2...
    start "" "%2"
) else (
    echo → %2 déjà ouvert.
)
goto :eof

:: Lancement selon choix
for %%C in (!cleaned!) do (
    if "%%C"=="1" (
        call :LaunchIfNotRunning "%procVSCode%" "!app1!"
        call :LaunchIfNotRunning "%procDocker%" "!app2!"
        call :LaunchIfNotRunning "%procOpera%" "!app3!"
    )
    if "%%C"=="2" (
        call :LaunchIfNotRunning "%procVSCode%" "!app1!"
        call :LaunchIfNotRunning "%procDocker%" "!app2!"
        call :LaunchIfNotRunning "%procOpera%" "!app3!"
        call :LaunchIfNotRunning "%procAndroid%" "!app4!"
    )
    if "%%C"=="3" (
        taskList /fi "imageName eq !proc3!.exe" | find /i "!proc3!.exe" >nul
        if errorLevel 1 (
            echo → Lancement de VS Code...
            start "" "!app4!"
        ) else (
            echo → VS Code est déjà ouvert.
        )
    )
    if "%%C"=="4" (
        echo → Lancement de Cities Skylines II...
        start "" "C:\Users\berti\OneDrive\Bureau\Cities Skylines II.url"
    )
    if "%%C"=="5" (
        call :LaunchIfNotRunning "%procOpera%" "!app3!"
    )
    if "%%C"=="6" (
        call :LaunchIfNotRunning "%procProject64%" "!app6!"
    )
    if "%%C"=="7" (
        echo → Lancement de Geometry Dash...
        start "" "C:\Users\berti\OneDrive\Bureau\Geometry Dash.url"
    )
)

echo.
pause
goto MENU
