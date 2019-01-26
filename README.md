# polybar-kdeconnect

[KDEConnect](https://github.com/KDE/kdeconnect-kde) module for [Polybar](https://github.com/jaagr/polybar)

![screenshot](screenshot.png)  
Demo with [Material Theme](https://github.com/DaveDavenport/rofi-themes/blob/master/User%20Themes/material.rasi) and [Material Polybar](https://github.com/adi1090x/polybar-themes)

## Dependencies
* [rofi](https://github.com/DaveDavenport/rofi)
* [kdeconnect](https://github.com/KDE/kdeconnect-kde)
* Iosevka Nerd Font

## Usage
Place the given files together in some folder, and use it in your polybar `config` as
```  
[module/kdeconnect]  
type = custom/script  
exec = /path/to/files/polybar-kdeconnect.sh 
click-left = /path/to/files/polybar-kdeconnect-menu.sh 
tail = true
````

In [`polybar-kdeconnect.config`](polybar-kdeconnect.config), set the `device` variable to your device id (Use `kdeconnect-cli -a`)

## Customization
You can change the variables in [`polybar-kdeconnect.config`](polybar-kdeconnect.config) to customize the [rofi](https://github.com/DaveDavenport/rofi) menu and the icons shown in [polybar](https://github.com/jaagr/polybar)

## Multiple Devices
The only way to have multiple devices is to have seperate scripts, and seperate module entries in polybar config