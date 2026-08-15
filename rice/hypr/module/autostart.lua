-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function () 
   hl.exec_cmd("waybar")
   hl.exec_cmd("hyprpaper")
   hl.exec_cmd("sleep 2 && $HOME/.config/hypr/script/wallpaper.sh")
end)
