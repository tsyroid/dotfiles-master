## How to Change the TTY Colors

### Context


1. archlinux
2. clean install, no DM or WM -- just tty
3. colors are garsh :-(
4. the following utilizes `https://github.com/catppuccin/tty`

(Now I the above patch installed and working, I'm not fond of the tty colors, but it works. Details later)


### Clone the Above Repo

```sh
cd .wdir
git clone https://github.com/catppuccin/tty.git ~/.wdir/catppuccin-tty
cd catppuccin-tty
./generate.sh mocha
```

Now the instructions are to copy the text out from above command and paste it into `grub.cfg` (or whatever bootloader is in use).

Cool. But how do I enable/use the system clipboard from the tty?

Mmmm.

Several options exist, but most are complicated and involve incantations
and dependencies and more software and more configuration.

Simplest solution is as follows:

---

### Generate and Paste the Code String

1. Install (gnome) gpm: `sudo pacman -S gpm` (no deps, minimal footprint).

2. Start the gpm service: `sudo systemctl start gpm`.
   You should immediately see a mouse cursor block on-screen.

3. Run `~/.wdir/catppuccin-tty/generate.sh mocha`.

4. Select output string with the mouse; this will automatically copy the string to the clipboard.

5. Edit `/etc/default/grub`, find `GRUB_CMDLINE_LINUX`, and append (paste; middle mouse button) to this entry.

6. Rebuild grub: `sudo grub-mkconfig -o /boot/grub/grub.cfg`

7. Reboot

---

Bob's yer uncle.

<!-- EOF -->
