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
        echo → Lancement de A...
        start "" "!app1!"
    )
    if "%%C"=="2" (
        echo → Lancement de B...
        start "" "!app2!"
    )
    if "%%C"=="3" (
        echo → Lancement de C...
        start "" "!app3!"
    )
    if "%%C"=="4" (
        echo → Lancement de D...
        start "" "!app4!"
    )
    if "%%C"=="5" (
        echo → Lancement de E...
        start "" "!app5!"
    )
    if "%%C"=="6" (
        echo → Lancement de F...
        start "" "!app6!"
    )
    if "%%C"=="7" (
        echo → Lancement de G...
        start "" "!app7!"
    )
)

echo.
pause
goto MENU
