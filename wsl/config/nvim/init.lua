-- NOTE: temporary
_G.Utils = {}
_G.Commands = {}

-- ===== SETTINGS ================================
_G.Settings = {
  colorscheme = 'ayu', -- 'ayu'|'xresources'
  background = 'dark', -- 'dark'|'light'
  ayu_ver = 'nvim', -- 'luxed'|'nvim', dependent on plugin

  mapleader = ' ',
}

-- before plugins so if they are setting keymaps they know the mapleader, in keys it's too late
vim.g.mapleader = _G.Settings.mapleader

require('plugins')
require('keys')
require('options')
require('stylish')
require('commands')
