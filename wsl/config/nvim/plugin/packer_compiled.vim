" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ayu = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/ayu"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22stylish.dashboard\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["fennel.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/fennel.vim"
  },
  ["formatter.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20magic.formatter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.galaxyline\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/goyo.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28stylish.indentblankline\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19qol.kommentary\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/kommentary"
  },
  ["limelight.vim"] = {
    commands = { "Limelight", "Goyo" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/limelight.vim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/neogit"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\20check_line_pair\1\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.bufferline\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeRefresh", "NvimTreeFindFile" },
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17qol.nvimtree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.treesitter\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/popup.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/rust.vim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/startuptime.vim"
  },
  tabular = {
    after_files = { "/home/archwsl/var/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    commands = { "Tab", "Tabularize" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/tabular"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22stylish.telescope\frequire\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-nix"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/vim-nix"
  },
  ["vim-ps1"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vim-yadi"] = {
    config = { "\27LJ\2\nT\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\2\0B\0\3\1K\0\1\0#autocmd BufRead * DetectIndent\14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-yadi"
  }
}

-- Config for: nvim-bufferline.lua
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.bufferline\frequire\0", "config", "nvim-bufferline.lua")
-- Config for: gitsigns.nvim
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28stylish.indentblankline\frequire\0", "config", "indent-blankline.nvim")
-- Config for: vim-yadi
try_loadstring("\27LJ\2\nT\0\0\4\0\4\0\a6\0\0\0009\0\1\0009\0\2\0'\2\3\0+\3\2\0B\0\3\1K\0\1\0#autocmd BufRead * DetectIndent\14nvim_exec\bapi\bvim\0", "config", "vim-yadi")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22stylish.telescope\frequire\0", "config", "telescope.nvim")
-- Config for: nvim-colorizer.lua
try_loadstring("\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\3\0\0\6*\f!packer\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: kommentary
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19qol.kommentary\frequire\0", "config", "kommentary")
-- Config for: dashboard-nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22stylish.dashboard\frequire\0", "config", "dashboard-nvim")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23stylish.galaxyline\frequire\0", "config", "galaxyline.nvim")
-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\20check_line_pair\1\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")

-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Limelight lua require("packer.load")({'limelight.vim'}, { cmd = "Limelight", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim', 'limelight.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Format lua require("packer.load")({'formatter.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'formatter.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Tab lua require("packer.load")({'tabular'}, { cmd = "Tab", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'fennel.vim'}, { ft = "fennel" }, _G.packer_plugins)]]
vim.cmd [[au FileType nix ++once lua require("packer.load")({'vim-nix'}, { ft = "nix" }, _G.packer_plugins)]]
vim.cmd [[au FileType Powershell ++once lua require("packer.load")({'vim-ps1'}, { ft = "Powershell" }, _G.packer_plugins)]]
vim.cmd [[au FileType ps1 ++once lua require("packer.load")({'vim-ps1'}, { ft = "ps1" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
  -- Event lazy-loads
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'formatter.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1.vim]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1xml.vim]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/xml.vim]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim]]
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/fennel.vim/ftdetect/fennel.vim]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
