local lspconfig = require('lspconfig')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = false,
    signs = true,
    update_in_insert = false,
  }
)

local on_attach = function()
  -- Keybindings for LSPs
  vim.fn.nvim_set_keymap("n", "gd"   , "<cmd>lua vim.lsp.buf.definition()<CR>"      , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "gh"   , "<cmd>lua vim.lsp.buf.hover()<CR>"           , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "gD"   , "<cmd>lua vim.lsp.buf.implementation()<CR>"  , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>"  , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "1gD"  , "<cmd>lua vim.lsp.buf.type_definition()<CR>" , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "gr"   , "<cmd>lua vim.lsp.buf.references()<CR>"      , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "g0"   , "<cmd>lua vim.lsp.buf.document_symbol()<CR>" , {noremap = true , silent = true})
  vim.fn.nvim_set_keymap("n", "gW"   , "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", {noremap = true , silent = true})
  require('completion').on_attach()
end



lspconfig.rust_analyzer.setup({ on_attach = on_attach })
lspconfig.vimls.setup({ on_attach = on_attach })
local sumneko_root_path = vim.fn.stdpath('cache')..'/lsp/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"
lspconfig.sumneko_lua.setup({
  cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" };
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        library = {
          [ vim.fn.expand('$VIMRUNTIME/lua') ] = true,
          [ vim.fn.expand('$VIMRUNTIME/lua/vim/lsp') ] = true,
        },
      },
    },
  },
  on_attach = on_attach
})
