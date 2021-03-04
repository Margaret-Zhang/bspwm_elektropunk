## My Custom Window Manager Setup (elektropunk)

[~/.xinitrc]
	+ exec bspwm

### install fonts
```
sudo cp -rv fonts/*.ttf /usr/share/fonts/TTF/ && fc-cache
```
---
### window manager: bspwm(+sxhkd)
> xorg-server xorg-xinit xorg-xprop xorg-xsetroot bspwm sxhkd (xorg-xrandr)
---
### program launcher
> rofi
---
### terminal emulator
> (alacritty) termite (https://terminal.sexy can config your termial emulator)
---
### window manager panel bar
> polybar (need: archlinuxcn)
---
### wallpaper display
> feh (default position: ~/Pictures/Wallpapers)
---
### transparent compositor
> picom
---
### input-method
> fcitx
---
### calculate cpu frequency
> bc
---
### volume control
> pulseaudio
---
### wlan network
> wpa_supplicant
[/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf] (wpa_supplicant in archwiki)
---
### cli visual sound
> ![cli-visualizer](https://github.com/dpayne/cli-visualizer)
---
### music player
> netease-cloud-music (need: archlinuxcn)
---
### screenshot tool
> scrot
