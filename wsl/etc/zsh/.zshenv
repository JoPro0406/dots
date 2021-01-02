export conf="$HOME/etc"
export data="$HOME/var"
export cache="$HOME/var/cache"

export XDG_CONFIG_HOME="$conf"
export XDG_DATA_HOME="$data"
export XDG_CACHE_HOME="$cache"

export PATH="$HOME/bin":$PATH
export PATH="$HOME/usr/bin":$PATH
export PATH="$data/cargo/bin":$PATH

export DOTS="$HOME/usr/prj/dots"

export EDITOR="nvim"
export VISUAL="$EDITOR"
export MANPAGER="nvim -c 'set ft=man' -"

export NVM_DIR="$HOME/etc/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export LESSHISTFILE="/dev/null"
export GOPATH="$cache/go"

export RUSTUP_HOME="$data/rustup"
export CARGO_HOME="$data/cargo"
