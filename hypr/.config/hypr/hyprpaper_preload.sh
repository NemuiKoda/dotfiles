#!/bin/bash

preload_wallpaper() {

    wallpaper_dir="$HOME/.config/wallpaper/"

    wallpapers=$(find "$wallpaper_dir" -type f | sort -R )

    for wallpaper in $wallpapers; do
        preload_string+="preload = "$wallpaper"\n"
        wallpaper_string+="wallpaper = , $wallpaper\n"
    done

    echo -en "$preload_string$wallpaper_string" > ~/.config/hypr/hyprpaper.conf

}

preload_wallpaper
