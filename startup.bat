@echo off
setLocal EnableDelayedExpansion
title Lanceur Multi-Apps
color 0A

:: === Définir les chemins des programmes ===
set "app1=C:\Program Files\Android\Android Studio\bin\studio64.exe"
set "app2=C:\Program Files\Docker\Docker\Docker Desktop.exe"
set "app3=C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
set "app4=C:\Users\berti\OneDrive\Bureau\Cities Skylines II.url"
set "app5=C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
set "app6=C:\Program Files (x86)\Project64 3.0\Project64.exe"
set "app7=C:\Users\berti\OneDrive\Bureau\Geometry Dash.url"

:: === Affichage du menu ===
:MENU
cls
echo =====================================
echo           MENU DE LANCEMENT
echo =====================================
echo Tape les numéros des apps à lancer (ex: 14 ou 231)
echo.
echo 1 - Lancer B-FLOW (WEB)
echo 2 - Lancer B-FLOW (Mobile)
echo 3 - Lancer VS Code
echo 4 - Lancer Cities Skylines 2
echo 5 - Lancer Opera GX
echo 6 - Lancer Project 64
echo 7 - Lancer Geometry Dash
echo 0 - Quitter
echo =====================================
set /p choice=Ton choix : 

:: === Arrête le programme ===
if "%choice%"=="0" exit

:: === Supprimer les doublons ===
set "cleaned="
for %%C in (1 2 3 4 5 6 7) do (
    echo %choice% | find "%%C" >nul
    if not errorLevel 1 (
        echo !cleaned! | find "%%C" >nul
        if errorLevel 1 set "cleaned=!cleaned!%%C"
    )
)

:: === Lancer les applis correspondantes ===
cls
echo ========== LANCEMENT ==========

for %%C in (!cleaned!) do (
    if "%%C"=="1" (
        taskList /fi "imageName eq !proc1!.exe" | find /i "!proc1!.exe" >nul
        if errorLevel 1 (
            echo → Lancement des applis nécessaires pour B-FLOW...
            start "" "!app1!"
        ) else (
            echo → A déjà en cours.
        )
    )
    if "%%C"=="2" (
        taskList /fi "imageName eq !proc2!.exe" | find /i "!proc2!.exe" >nul
        if errorLevel 1 (
            echo → Lancement des applis nécessaires pour B-FLOW...
            start "" "!app2!"
        ) else (
            echo → B déjà en cours.
        )
    )
    if "%%C"=="3" (
        taskList /fi "imageName eq !proc3!.exe" | find /i "!proc3!.exe" >nul
        if errorLevel 1 (
            echo → Lancement VS Code...
            start "" "!app3!"
        ) else (
            echo → C déjà en cours.
        )
    )
    if "%%C"=="4" (
        taskList /fi "imageName eq !proc4!.exe" | find /i "!proc4!.exe" >nul
        if errorLevel 1 (
            echo → Lancement de Cities Skylines 2...
            start "" "!app4!"
        ) else (
            echo → D déjà en cours.
        )
    )
    if "%%C"=="5" (
        taskList /fi "imageName eq !proc5!.exe" | find /i "!proc5!.exe" >nul
        if errorLevel 1 (
            echo → Lancement de Opera GX...
            start "" "!app5!"
        ) else (
            echo → E déjà en cours.
        )
    )
    if "%%C"=="6" (
        taskList /fi "imageName eq !proc6!.exe" | find /i "!proc6!.exe" >nul
        if errorLevel 1 (
            echo → Lancement de Project 64...
            start "" "!app6!"
        ) else (
            echo → F déjà en cours.
        )
    )
    if "%%C"=="7" (
        taskList /fi "imageName eq !proc7!.exe" | find /i "!proc7!.exe" >nul
        if errorLevel 1 (
            echo → Lancement de Geometry Dash...
            start "" "!app7!"
        ) else (
            echo → G déjà en cours.
        )
    )
)

echo.
pause
goto MENU
