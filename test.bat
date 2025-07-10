# Script PowerShell interactif pour lancer programmes et commandes selon choix utilisateur

# Chemins des programmes
$vscode = "C:\Users\berti\AppData\Local\Programs\Microsoft VS Code\Code.exe"
$opera = "C:\Users\berti\AppData\Local\Programs\Opera GX\opera.exe"
$docker = "C:\Program Files\Docker\Docker\Docker Desktop.exe"
$project64 = "C:\Program Files (x86)\Project64 3.0\Project64.exe"
$geometryDash = "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Geometry Dash.url"
$citiesSkylines = "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Cities Skylines II.url"
$celeste = "C:\Users\berti\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Celeste.url"

$startDevSh = "/home/bert/Bureau WSL/B-FLOW/B-FLOW/start.dev.sh"

# Fonction pour exécuter une commande bash dans WSL
function Run-BashCommand($command) {
    wsl bash -c "$command"
}

# Demande de saisie
do {
    $input = Read-Host "Entrez un chiffre entre 0 et 8 (0 pour quitter)"
} while ($input -notmatch "^[0-8]$")

switch ($input) {
    '0' {
        Write-Output "Fermeture..."
        exit
    }
    '1' {
        Start-Process $vscode
        Start-Process $opera
        Start-Process $docker
        Run-BashCommand "docker stop \$(docker ps -q)"
        Run-BashCommand "bash $startDevSh"
        Run-BashCommand "docker stop bflow-tester4"
    }
    '2' {
        Start-Process $vscode
        Start-Process $opera
        Start-Process $docker
        Run-BashCommand "docker stop \$(docker ps -q)"
        Run-BashCommand "bash $startDevSh"
    }
    '3' {
        Start-Process $vscode
        Start-Process $opera
    }
    '4' {
        Start-Process $opera
    }
    '5' {
        Start-Process $project64
        Start-Process $opera
    }
    '6' {
        Start-Process $geometryDash
    }
    '7' {
        Start-Process $citiesSkylines
    }
    '8' {
        Start-Process $celeste
    }
}
Read-Host "Appuyez sur Entrée pour fermer"
