#System Files

##capslock

###/usr/share/X11/xkb/symbols/capslock

Edited to change Caps Lock to Super key and the former Super key to Meta key.  Meta is changed to Mod3. This give me another modifier key.

##wsetup.sh

###/etc/ly/wsetup.sh

Edited to change to location of my zsh configuration in ~/.config/zsh.

##zfs.conf

###/etc/modprobe.d/zfs.conf

Added to set zfs ARC size and to speed up resilvering and scrubbing.

##sanoid.conf

###/etc/sanoid/sanoid.conf

Edited to setup automatic zfs snapshots of my root filesystem.

##99-swappiness.conf

###/etc/sysctl.d

Added to lower swappiness.

##99-zfs.conf

###/etc/systemd/journald.conf.d/99-zfs.conf

Added to set the systemd journal as volatile, limit its size and turn off compression for zfs.


