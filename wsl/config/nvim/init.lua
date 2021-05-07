-- NOTE: most of the setup for plugins happens with the config key from packer

-- NOTE: temporary
_G.Utils = {}
_G.Commands = {}

vim.g.mapleader = ' '

require('plugins')
require('keys')
require('options')
require('stylish')
require('commands')
