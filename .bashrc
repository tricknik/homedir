#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

please() {
  bangbang=$(history | tail -2 | head -1 | sed 's/ *[0-9]* *//')
  sudo $bangbang
}

alias ls='ls --color=auto'
alias vi='vim'
alias vu='pavucontrol'
alias halt='sudo halt'
alias shazam='sudo shazam'
alias netc='sudo netcfg'
alias netu='sudo dhcpcd usb0'
alias lan='sudo dhcpcd eth0'
alias wifi='sudo wifi-select'
alias rc.d='sudo rc.d'
alias vpnc='sudo vpnc'
alias vpnc-disconnect='sudo vpnc-disconnect'
alias dws='ssh -A root@dmytrik.dev.affiliatewindow.com' 
PS1='[\u@\h \W]\$ '

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
