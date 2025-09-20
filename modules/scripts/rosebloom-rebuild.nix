{ pkgs }:

pkgs.writeShellScriptBin "rosebloom-rebuild" 
''
if [ "$1" == "system" ]; then
    if [ "$(id -u)" -ne 0 ]; then
        echo "Error: This operation requires root privileges. Please run the script with sudo."
        exit 1
    fi

    sudo nixos-rebuild switch --flake /home/rosa/Sync/01_Projects/RosebloomOS#$HOSTNAME

    elif [ "$1" == "home" ]; then
    echo "Performing Home Rebuild"
    home-manager switch --flake /home/rosa/Sync/01_Projects/RosebloomOS#rosa
else
    echo "Usage: $0 <system|home>"
    exit 1
fi
''