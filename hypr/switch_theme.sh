#!/bin/bash

# Liste des thèmes disponibles
themes=("Catppuccin - Latte" "Catppuccin - Frappe" "Catppuccin - Macchiato" "Catppuccin - Mocha" "Nord")

# Afficher les thèmes disponibles avec des numéros
clear
echo "Sélectionnez un thème : "
echo ""
for i in "${!themes[@]}"; do
  echo "$i : ${themes[i]}"
done

# Demander à l'utilisateur de saisir un numéro de thème
echo ""
read -p ":: " theme_choice

# Vérifier si le choix est valide
if [ "$theme_choice" -ge 0 ] && [ "$theme_choice" -lt ${#themes[@]} ]; then
  selected_theme="${themes[theme_choice]}"
  echo ""
  echo "Vous avez choisi le thème : $selected_theme"
  echo ""

  case $selected_theme in 
    "Catppuccin - Latte")

      echo ">> Suppression du fond d'ecran actuel"
      rm -rf ~/.config/hypr/hyprpaper.conf
      echo ">> Nouveau fond d'écran"
      ln -s ~/.config/hypr/wallpapers/latte.conf ~/.config/hypr/hyprpaper.conf
      killall hyprpaper
      hyprpaper > /dev/null &
      
      echo ">> Changement de la waybar"
      rm -rf ~/.config/waybar/colors.css 
      ln -s ~/.config/waybar/themes/latte.css ~/.config/waybar/colors.css 
      echo ">> Redémarrage de la waybar"
      killall waybar > /dev/null
      waybar > /dev/null & disown 

      ;;

    "Catppuccin - Frappe")
      
      echo ">> Suppression du fond d'ecran actuel"
      rm -rf ~/.config/hypr/hyprpaper.conf
      echo ">> Nouveau fond d'écran"
      ln -s ~/.config/hypr/wallpapers/frappe.conf ~/.config/hypr/hyprpaper.conf
      killall hyprpaper
      hyprpaper > /dev/null &
      
      echo ">> Changement de la waybar"
      rm -rf ~/.config/waybar/colors.css 
      ln -s ~/.config/waybar/themes/frappe.css ~/.config/waybar/colors.css 
     
      echo ">> Redémarrage de la waybar"
      killall waybar > /dev/null
      waybar > /dev/null & disown 
      
      ;;
    
    "Catppuccin - Macchiato")
      
      echo ">> Suppression du fond d'ecran actuel"
      rm -rf ~/.config/hypr/hyprpaper.conf
      echo ">> Nouveau fond d'écran"
      ln -s ~/.config/hypr/wallpapers/macchiato.conf ~/.config/hypr/hyprpaper.conf
      killall hyprpaper
      hyprpaper > /dev/null &
      
      echo ">> Changement de la waybar"
      rm -rf ~/.config/waybar/colors.css 
      ln -s ~/.config/waybar/themes/macchiato.css ~/.config/waybar/colors.css

      echo ">> Redémarrage de la waybar"
      killall waybar > /dev/null
      waybar > /dev/null & disown 
      
      ;;

    "Catppuccin - Mocha")
      
      echo ">> Suppression du fond d'ecran actuel"
      rm -rf ~/.config/hypr/hyprpaper.conf
      echo ">> Nouveau fond d'écran"
      ln -s ~/.config/hypr/wallpapers/mocha.conf ~/.config/hypr/hyprpaper.conf
      killall hyprpaper
      hyprpaper > /dev/null &
      
      echo ">> Changement de la waybar"
      rm -rf ~/.config/waybar/colors.css 
      ln -s ~/.config/waybar/themes/mocha.css ~/.config/waybar/colors.css
      
      echo ">> Redémarrage de la waybar"
      killall waybar > /dev/null 
      waybar > /dev/null & disown 

     ;;

    "Nord")

      echo ">> Suppression du fond d'ecran actuel"
      rm -rf ~/.config/hypr/hyprpaper.conf
      echo ">> Nouveau fond d'écran"
      ln -s ~/.config/hypr/wallpapers/nord.conf ~/.config/hypr/hyprpaper.conf
      killall hyprpaper
      hyprpaper > /dev/null &

      echo ">> Changement de la waybar"
      rm -rf ~/.config/waybar/colors.css 
      ln -s ~/.config/waybar/themes/frappe.css ~/.config/waybar/colors.css

      echo ">> Redémarrage de la waybar"
      killall waybar /dev/null
      waybar > /dev/null & disown 

      ;;
    esac


else
  echo "Choix invalide. Veuillez entrer un numéro de thème valide."
fi

