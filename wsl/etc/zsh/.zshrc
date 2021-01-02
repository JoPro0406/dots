set -k # comments
setopt auto_cd # cd by directory name
unsetopt flowcontrol # disable <C-S> + <C-Q>

# Keybinds
bindkey '^[[1;5C'  forward-word           # Ctrl-RightArrow
bindkey '^[[1;5D'  backward-word          # Ctrl-LeftArrow

# Prompt
PROMPT='%B%F{%(!.red.blue)}%3~ | %b%f'

# History
HISTFILE="$ZDOTDIR/zsh_hist"
HISTSIZE=10000
SAVEHIST=10000
setopt histignorespace
setopt extended_history
setopt hist_ignore_dups
setopt share_history

# Autocompletion
setopt NO_NOMATCH   # disable some globbing
setopt complete_in_word
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' matcher-list \
	'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
fpath=($ZDOTDIR/completions $fpath)
autoload -U compinit && compinit

# Plugins
source <(antibody init)
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-syntax-highlighting

# Aliases
. $ZDOTDIR/aliases

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
