{ pkgs }:

pkgs.writeShellScriptBin "rosebloom-rebuild" 
''
if [ "$1" == "system" ]; then
   if [ "$2" == "-l" ]; then  # Check for the "-l" flag
        if [ "$(id -u)" -ne 0 ]; then
            echo "Error: This operation requires root privileges. Please run the script with sudo."
            exit 1
        fi

        echo "Performing System Rebuild using local repository."
        nixos-rebuild switch --flake /home/rosa/RosebloomOS#$HOSTNAME
   else  # Default behavior if no "-l" flag
        if [ "$(id -u)" -ne 0 ]; then
            echo "Error: This operation requires root privileges. Please run the script with sudo."
            exit 1
        fi

        echo "Performing System Rebuild using github repository." 
        nixos-rebuild switch --flake git+https://github.com/RoseHobgoblin/RosebloomOS#$HOSTNAME
   fi

elif [ "$1" == "home" ]; then
   if [ "$2" == "-l" ]; then  # Check for the "-l" flag
       echo "Performing Home Rebuild using local repository" 
       home-manager switch --flake ~/RosebloomOS#$USER
   else
       echo "Performing Home Rebuild ng github repository."
       home-manager switch --flake git+https://github.com/RoseHobgoblin/RosebloomOS#$USER
   fi

else
   echo "Usage: $0 <system|home> [-l]" # Indicate optional "-l" for home
   exit 1
fi

''