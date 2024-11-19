set_wallpaper() {
    sleep 2

    monitor="DP-2"
    monitor2="HDMI-A-1"

    wallpaper_dir="$HOME/.config/wallpaper"

    files=($wallpaper_dir/*)

    random_file=("${files[RANDOM % ${#files[@]}]}")
    
    printf "$random_file"
    
    hyprctl hyprpaper wallpaper ",$random_file"

}

set_wallpaper
