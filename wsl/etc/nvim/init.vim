" __   _(_)_ __ ___ __ ___ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (
"   \_/ |_|_| |_| |_|_|  \___|

let g:nvim_config_root = expand('<sfile>:p:h')
let $VIM_ROOT = g:nvim_config_root

source $VIM_ROOT/plugins.vim " Plugins
source $VIM_ROOT/keys.vim " Keybinds
source $VIM_ROOT/vimoptions.vim " Vim-specific settings
source $VIM_ROOT/pluginoptions.vim " Plugin-specific settings
