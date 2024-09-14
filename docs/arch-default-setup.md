## Default Setup -- Archlinux on Thinkpad

### WiFi Setup

iwctl
station wlan0 connect 'TELUS2424'
fy3s8wybtq
station wlan0 show
exit

### Pre-Archinstall

pacman -Sy
pacman -S archinstall

### Archinstall

archinstall --advanced

Language: default
Mirrors: CA
Locales: defined
Disk Configuration: Auto (best-effort, ext4, no sep home)
Disk encryption: None
Bootloader: Systemd-boot
Unified kernel images: False
Swap: True
Hostname: wendell
Root password: 964718
User Account: Yes; taz; M8h8sKY8
Profile: Desktop/Hyprland/polkit/graphics:opensource/Greeter:sddm
Audio: pipewire
Kernels: linux-lts
Additional pkgs: neovim git
Parallel downloads: 10
Network: copy iso
Timezone: Canada/Pacific
Auto time sync: True

>> Install <<

Preboot (from chroot)

install terminus-font, ttf-terminus-nerd trash-cli
edit /etc/pacman.conf
edit /etc/vconsole.conf

>> REBOOT <<

### Post

Edited hyprland.conf (Needs sudo to edit???)

sudo systemctl disable sddm.service

reboot

(from tty ;-) git clone https://github.com/tsyroid/dotfiles-core.git ~/.dotfiles




