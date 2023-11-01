swayidle -w timeout 600 'swaylock -f -c 000000' \
            timeout 900 'hyprctl dispatch dpms off' \
            timeout 1200 'systemctl suspend' \
            resume 'hyprctl dispatch dpms on' \
            before-sleep 'swaylock -f -c 000000' &
