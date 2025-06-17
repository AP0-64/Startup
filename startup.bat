@echo off
setLocal EnableDelayedExpansion
title Lanceur Multi-Apps
color 0A

:: === Définir les chemins des programmes ===
set "app1=C:\chemin\vers\A.exe"
set "app2=C:\chemin\vers\B.exe"
set "app3=C:\chemin\vers\C.exe"
set "app4=C:\chemin\vers\D.exe"
set "app5=C:\chemin\vers\E.exe"
set "app6=C:\chemin\vers\F.exe"
set "app7=C:\chemin\vers\G.exe"

:: === Affichage du menu ===
:MENU
cls
echo =====================================
echo           MENU DE LANCEMENT
echo =====================================
echo Tape les numéros des apps à lancer (ex: 14 ou 231)
echo.
echo 1 - Lancer A
echo 2 - Lancer B
echo 3 - Lancer C
echo 4 - Lancer D
echo 5 - Lancer E
echo 6 - Lancer F
echo 7 - Lancer G
echo 0 - Quitter
echo =====================================
set /p choice=Ton choix : 

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
echo === LANCEMENT ===

for %%C in (!cleaned!) do (
    if "%%C"=="1" (
        tasklist /fi "imagename eq !proc1!.exe" | find /i "!proc1!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de A...
            start "" "!app1!"
        ) else (
            echo → A déjà en cours.
        )
    )
    if "%%C"=="2" (
        tasklist /fi "imagename eq !proc2!.exe" | find /i "!proc2!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de B...
            start "" "!app2!"
        ) else (
            echo → B déjà en cours.
        )
    )
    if "%%C"=="3" (
        tasklist /fi "imagename eq !proc3!.exe" | find /i "!proc3!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de C...
            start "" "!app3!"
        ) else (
            echo → C déjà en cours.
        )
    )
    if "%%C"=="4" (
        tasklist /fi "imagename eq !proc4!.exe" | find /i "!proc4!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de D...
            start "" "!app4!"
        ) else (
            echo → D déjà en cours.
        )
    )
    if "%%C"=="5" (
        tasklist /fi "imagename eq !proc5!.exe" | find /i "!proc5!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de E...
            start "" "!app5!"
        ) else (
            echo → E déjà en cours.
        )
    )
    if "%%C"=="6" (
        tasklist /fi "imagename eq !proc6!.exe" | find /i "!proc6!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de F...
            start "" "!app6!"
        ) else (
            echo → F déjà en cours.
        )
    )
    if "%%C"=="7" (
        tasklist /fi "imagename eq !proc7!.exe" | find /i "!proc7!.exe" >nul
        if errorlevel 1 (
            echo → Lancement de G...
            start "" "!app7!"
        ) else (
            echo → G déjà en cours.
        )
    )
)

echo.
pause
goto MENU
