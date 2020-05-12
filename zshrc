#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	# exec start-pulseaudio-x11 &
	exec ck-launch-session dbus-launch --sh-syntax --exit-with-session sway
	#exec sway
fi

# Alias
alias xi="sudo xbps-install"
alias xq="sudo xbps-query"
alias xr="sudo xbps-remove"

# Dotfiles alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# IntelliJ GUI
export _JAVA_AWT_WM_NONREPARENTING=1
export wmname=LG3D
export QT_QPA_PLATFORM=wayland

# VirtualBox
export QT_QPA_PLATFORM=xcb VirtualBox

# Adding IntelliJ to path
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Journal
alias journal='nvim ~/Dropbox/journal/$(date "+%Y")/$(date "+%m")/$(date "+%Y.%m.%d").md'
