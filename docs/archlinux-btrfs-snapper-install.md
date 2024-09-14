## Archlinux - BTRFS, Snapper, Grub Install

### Frontmatter Notes

* NOTE: ter-v28b (NOT ter-28b)

### References

[Arch Linux Install](https://youtube.com/watch?v=Xynotc9BKe8)
[Snapper - ArchWiki](https://wiki.archlinux.org/title/Snapper)
[Btrfs - ArchWiki](https://wiki.archlinux.org/title/Btrfs)

NVMe0: CT1000P3SSD8 <!-- <- from BIOS -->

nvme0n1
  |- p1 1G  ef00  EFISYSTEM
  |- p2 2G  8200  swap
  |- p3 929G 8304 archlinux


mkfs.(v)fat -F32    /dev/nvme0np1

mkswap /dev/mvme0n1p2

swapon /dev/nvme0n1p2

mkfs.btrfs /dev/nvme01p2

mkfs.btrfs /dev/nvme01p3

mount /dev/nvme0n1p3

mount /dev/nvme0n1p3 /mnt

btrfs su  cr  /mnt/@  (root)
      ^subvolume
          ^ create

      /mnt/@home
      /mnt/@media
      /mnt/@snapshots
      /mnt/@var_lo


umount /mnt


mount -o noatime,compress=lzo,space_cache=v2,subvol=@ /dev/nvme0n1p3 /mnt

... su @home        /mnt/home
... su @media       /mnt/media
... su @snapshots   /mnt/.snapshots
... su @var_log     /mnt/var_log


mount /dev/nvme0n1p1 /mnt/boot

<!-- lsblk -->

pacstrap /mnt base linux linux-firmware neovim intel-ucode

<!-- generate fstab -->

genfstab -U /mnt >> /mnt/etc/fstab

<!-- chroot -->

arch-chroot /mnt

<!-- set timezone, locale -->

ln -sf /usr/share/zoneinfo/Canada/Pacific /etc/localtime

hwclock --systohc

{editor} /etc/locale.gen

  uncomment en.US.UTF-8 UTF-8

local-gen

{editor} /etc/locale.conf

{editor} /etc/vconsole.conf <!-- insert KEYMAP, FONT -->

{editor} /etc/hostname

{editor} /hosts (see file)

{editor} /etc/pacman.conf <!-- insert magic ILoveCandy -->

{root} password


<!-- install core packages -->

pacman -S {See my `core` file in `~/.dotfiles/setup/arch/core`}

<!-- end and continue -->


{editor} /etc/mkinitcpio.conf

    MODULES=(btrfs)

mkinitcpio -p {linux}

<!-- grub install/setup -->

grub-install  --target=x86_64-efi
              --efi-directory=/boot
              --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager
                 bluetooth
                 cups

<!-- add user -->

useradd -mG wheel tag

passwd taz

EDITOR = vim visudo

exit (from chroot)

umount -a (ignore busy errors)

<!-- FIRST BOOT -->

nmtui - configure wireless

fix snapper [SEE: fix-snapper.md]

### Compile yay


mkdir .wdir

cd .wdir

git clone https://aur.archlinux.org/yay

cd yay

makebuild -si

<!-- install snap-pac-grub -->

yay -S snap-pac-grub ~~snapper-gui~~

<!-- addendum: install timeshift -->


sudo pacman -S timeshift <!-- Mmmm. Nope. Draws in too much xorg shit ATM -->

install setup/arch/my-essential (`sudo pacman -S - < essential`)
(OR, `grep -v '^#' essential | sudo pacman -S -`)

<!-- EOF -->
