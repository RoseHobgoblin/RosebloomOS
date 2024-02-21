{ pkgs }:

pkgs.writeShellScriptBin "rosebloom-rebuild" 
''
if [ "$1" == "system" ]; then
    if [ "$(id -u)" -ne 0 ]; then
        echo "Error: This operation requires root privileges. Please run the script with sudo."
        exit 1
    fi

    nixos-rebuild switch --flake git+https://github.com/RoseHobgoblin/RosebloomOS#rosebloomos --impure

    elif [ "$1" == "home" ]; then
    echo "Performing Home Rebuild"
    home-manager switch --flake git+https://github.com/RoseHobgoblin/RosebloomOS#rosa --impure

else
    echo "Usage: $0 <system|home>"
    exit 1
fi
''