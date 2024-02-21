{ pkgs }:

pkgs.writeShellScriptBin "bloomshot" 
''
time=$(date +"%m-%d-%Y_%M%S")
dir="$HOME/Pictures/Screenshots"
filesaving="$dir/Screenshot_$time.png"

case $1 in
	"window")
		active_window_info=$(hyprctl -j activewindow | ${pkgs.jq}/bin/jq -r '(.class)')
		hyprctl -j activewindow | ${pkgs.jq}/bin/jq -r '"\(.at[0]),\(.at[1]) \(.size[0])x\(.size[1])"' | ${pkgs.grim}/bin/grim -g - $filesaving
        ;;
	"area")
		${pkgs.slurp}/bin/slurp | ${pkgs.grim}/bin/grim -g "-" $filesaving
        ;;
	*)
		monitor_name=$(hyprctl monitors -j | ${pkgs.jq}/bin/jq -r '.[] | select(.focused) | .name')
		${pkgs.grim}/bin/grim  -o $monitor_name $filesaving
        ;;
esac

notify-send "Screenshot captured" -t 2000
${pkgs.sox}/bin/play ~/.dotfiles/assets/sounds/screenshot.mp3
''