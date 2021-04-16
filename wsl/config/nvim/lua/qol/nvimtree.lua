-- https://github.com/kyazdani42/nvim-tree.lua/
local h = require('helpful')

h.setglobal {
  nvim_tree_side = 'left',
  nvim_tree_width = 25,
  nvim_tree_ignore = { '.git', 'node_modules' },
  nvim_tree_gitignore = 1,
  nvim_tree_auto_open = 0,
  nvim_tree_auto_ignore_ft = { 'dashboard' },
  nvim_tree_auto_close = 1,
  nvim_tree_quit_on_open = 0,
  nvim_tree_follow = 0,
  nvim_tree_indent_markers = 1,
  nvim_tree_hide_dotfiles = 1,
  nvim_tree_git_hl = 0,
  nvim_tree_root_folder_modifier = ':~',
  nvim_tree_tab_open = 0,
  nvim_tree_width_allow_resize = 0,
  nvim_tree_disable_netrw = 1,
  nvim_tree_hijack_netrw = 1,
  nvim_tree_add_trailing = 1,
  nvim_tree_group_empty = 1,
}
