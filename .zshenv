export PATH="$HOME/.local/bin:$PATH"
export XDG_DESKTOP_DIR="$HOME/"
export PAGER=less
export MANPAGER=less
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland-egl
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_WAYLAND_FORCE_DPI=96
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QUTE_SKIP_WAYLAND_CHECK=1
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export TERMINAL=kitty
export EDITOR=nvim
export BROWSER=firefox
export SUDO_EDITOR=/usr/bin/nvim
export READER=zathura
export FILE=ranger
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export ZDOTDIR="$HOME/.config/zsh/"
export XDG_CURRENT_DESKTOP=Unity

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"; a="${a%_}"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"; a="${a%_}"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"; a="${a%_}"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"; a="${a%_}"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"; a="${a%_}"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"; a="${a%_}"


