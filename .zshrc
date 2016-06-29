# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch notify
unsetopt beep extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marko/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH=$HOME/bin:$HOME/.gem/ruby/2.2.0/bin:${PATH}
export XDG_CONFIG_HOME=$HOME/.config

alias vpn='sudo openvpn --config /media/windows/Program\ Files/OpenVPN/config/schule_Marko_Notebook_global.ovpn'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

# fish-like visual suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Base16 Shell, ocean theme
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
