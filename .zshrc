HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd nomatch notify COMPLETE_ALIASES
unsetopt beep extendedglob
bindkey -v
zstyle :compinstall filename '/home/marko/.zshrc'
zstyle ':completion:*' menu select
autoload -Uz compinit
compinit

# keybinds

cdUndoKey() {
	popd	> /dev/null
	zle		reset-prompt
	echo
	ls
	echo
}

cdParentKey() {
	pushd ..	> /dev/null
	zle			reset-prompt
	echo
	ls
	echo
}

zle -N				cdUndoKey
zle -N				cdParentKey
bindkey '^[[1;3D'	cdUndoKey
bindkey '^[[1;3A'	cdParentKey

# environment variables
export PATH=$HOME/bin:$HOME/scripts:$HOME/.gem/ruby/2.2.0/bin:${PATH}
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=vim
export VISUAL=vim

# make systemd user services aware of PATH
systemctl --user import-environment PATH

# aliases
alias vpn='sudo openvpn --config /media/windows/Program\ Files/OpenVPN/config/schule_Marko_Notebook_global.ovpn'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'

# fish-like visual suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Base16 Shell, ocean theme
BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
