# polybar-kdeconnect

[KDEConnect](https://github.com/KDE/kdeconnect-kde) module for [Polybar](https://github.com/jaagr/polybar)

![menu](menu.gif)
![pmenu](pmenu.gif)
![pmenu2](pmenu2.gif)
![screenshot](screenshot.png)  
Demo with [Material Theme](https://github.com/DaveDavenport/rofi-themes/blob/master/User%20Themes/material.rasi) and [Material Polybar](https://github.com/adi1090x/polybar-themes)

## Dependencies
* [rofi](https://github.com/DaveDavenport/rofi)
* [kdeconnect](https://github.com/KDE/kdeconnect-kde)
* Iosevka Nerd Font
* [Zenity](https://github.com/GNOME/zenity)
* qbus-qt5 (or qt5tools on some distros)

## Usage
Place the given script in some folder, and use it in your polybar `config` as
```  
[module/kdeconnect]  
type = custom/script  
exec = "/path/to/files/polybar-kdeconnect.sh -d"  
tail = true
````

## Customization
You can change the variables in [`polybar-kdeconnect.sh`](polybar-kdeconnect.sh) to customize the [rofi](https://github.com/DaveDavenport/rofi) menu and the icons shown in [polybar](https://github.com/jaagr/polybar)

## Default Color Code Legend
Color | Meaning |
---|---|
![Disconnected](https://via.placeholder.com/16.png/000000/000000) | Device Disconnected |
![New Device](https://via.placeholder.com/16.png/FFFF00/FFFF00) | Unpaired Device |
![Baterry_90](https://via.placeholder.com/16.png/FFFFFF/FFFFFF) | Battery >= 90 |
![Baterry_80](https://via.placeholder.com/16.png/CCCCCC/CCCCCC) | Battery >= 80 |
![Baterry_70](https://via.placeholder.com/16.png/AAAAAA/AAAAAA) | Battery >= 70 |
![Baterry_60](https://via.placeholder.com/16.png/888888/888888) | Battery >= 60 |
![Baterry_50](https://via.placeholder.com/16.png/666666/666666) | Battery >= 50 |
![Baterry_LOW](https://via.placeholder.com/16.png/FF0000/FF0000) | Battery < 50 |


## Changelog
### v2
* Supports Multiple Devices without extra configuration
* Supports pairing/unpairing devices
* Removed `kdeconnect-cli` as dependency
* Combined seperate files into one
* Seperate icons for tablets and smartphone
