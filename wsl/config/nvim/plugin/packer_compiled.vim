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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/archwsl/var/cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/astronauta.nvim"
  },
  ["dashboard-nvim"] = {
    config = { "require('stylish.dashboard')" },
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
    config = { "require('magic.formatter')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/formatter.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "require('stylish.galaxyline')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "require('gitsigns').setup { numhl = true }" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/haskell-vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "require('stylish.indentblankline')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    config = { "require('qol.kommentary')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/kommentary"
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
  ["neoscroll.nvim"] = {
    config = { "require('neoscroll').setup()" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["neovim-ayu"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/neovim-ayu"
  },
  ["nvim-autopairs"] = {
    config = { "require('qol.autopairs')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "require('stylish.bufferline')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "require('colorizer').setup { '*', '!packer' }" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "require('magic.compe')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "require('magic.lspconfig')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeRefresh", "NvimTreeFindFile" },
    config = { "require('qol.nvimtree')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('qol.treesitter')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/nvim-ts-autotag"
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
  playground = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/popup.nvim"
  },
  ["prodoc.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/prodoc.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/rust-tools.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/opt/rust.vim"
  },
  ["snippets.nvim"] = {
    config = { "require('magic.snippets')" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/snippets.nvim"
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
    config = { "require('qol.telescope')" },
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
  ["vim-yadi"] = {
    config = { "vim.api.nvim_exec('autocmd BufRead * DetectIndent', true)" },
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/vim-yadi"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/which-key.nvim"
  },
  ["xresources-nvim"] = {
    loaded = true,
    path = "/home/archwsl/var/nvim/site/pack/packer/start/xresources-nvim"
  }
}

time("Defining packer_plugins", false)
-- Config for: gitsigns.nvim
time("Config for gitsigns.nvim", true)
require('gitsigns').setup { numhl = true }
time("Config for gitsigns.nvim", false)
-- Config for: nvim-autopairs
time("Config for nvim-autopairs", true)
require('qol.autopairs')
time("Config for nvim-autopairs", false)
-- Config for: neoscroll.nvim
time("Config for neoscroll.nvim", true)
require('neoscroll').setup()
time("Config for neoscroll.nvim", false)
-- Config for: nvim-colorizer.lua
time("Config for nvim-colorizer.lua", true)
require('colorizer').setup { '*', '!packer' }
time("Config for nvim-colorizer.lua", false)
-- Config for: dashboard-nvim
time("Config for dashboard-nvim", true)
require('stylish.dashboard')
time("Config for dashboard-nvim", false)
-- Config for: galaxyline.nvim
time("Config for galaxyline.nvim", true)
require('stylish.galaxyline')
time("Config for galaxyline.nvim", false)
-- Config for: telescope.nvim
time("Config for telescope.nvim", true)
require('qol.telescope')
time("Config for telescope.nvim", false)
-- Config for: nvim-bufferline.lua
time("Config for nvim-bufferline.lua", true)
require('stylish.bufferline')
time("Config for nvim-bufferline.lua", false)
-- Config for: kommentary
time("Config for kommentary", true)
require('qol.kommentary')
time("Config for kommentary", false)
-- Config for: nvim-compe
time("Config for nvim-compe", true)
require('magic.compe')
time("Config for nvim-compe", false)
-- Config for: vim-yadi
time("Config for vim-yadi", true)
vim.api.nvim_exec('autocmd BufRead * DetectIndent', true)
time("Config for vim-yadi", false)
-- Config for: indent-blankline.nvim
time("Config for indent-blankline.nvim", true)
require('stylish.indentblankline')
time("Config for indent-blankline.nvim", false)
-- Config for: nvim-treesitter
time("Config for nvim-treesitter", true)
require('qol.treesitter')
time("Config for nvim-treesitter", false)
-- Config for: snippets.nvim
time("Config for snippets.nvim", true)
require('magic.snippets')
time("Config for snippets.nvim", false)
-- Config for: nvim-lspconfig
time("Config for nvim-lspconfig", true)
require('magic.lspconfig')
time("Config for nvim-lspconfig", false)

-- Command lazy-loads
time("Defining lazy-load commands", true)
vim.cmd [[command! -nargs=* -range -bang -complete=file Tab lua require("packer.load")({'tabular'}, { cmd = "Tab", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Format lua require("packer.load")({'formatter.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'formatter.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time("Defining lazy-load commands", false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'fennel.vim'}, { ft = "fennel" }, _G.packer_plugins)]]
vim.cmd [[au FileType nix ++once lua require("packer.load")({'vim-nix'}, { ft = "nix" }, _G.packer_plugins)]]
vim.cmd [[au FileType Powershell ++once lua require("packer.load")({'vim-ps1'}, { ft = "Powershell" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType ps1 ++once lua require("packer.load")({'vim-ps1'}, { ft = "ps1" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
  -- Event lazy-loads
time("Defining lazy-load event autocommands", true)
vim.cmd [[au BufWritePre * ++once lua require("packer.load")({'formatter.nvim'}, { event = "BufWritePre *" }, _G.packer_plugins)]]
time("Defining lazy-load event autocommands", false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-nix/ftdetect/nix.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/fennel.vim/ftdetect/fennel.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/fennel.vim/ftdetect/fennel.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/fennel.vim/ftdetect/fennel.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1xml.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1xml.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/ps1xml.vim", false)
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/xml.vim", true)
vim.cmd [[source /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/xml.vim]]
time("Sourcing ftdetect script at: /home/archwsl/var/nvim/site/pack/packer/opt/vim-ps1/ftdetect/xml.vim", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
