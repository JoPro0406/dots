-- https://github.com/neovim/nvim-lspconfig/
-- https://github.com/glepnir/lspsaga.nvim/
-- https://github.com/simrat39/rust-tools.nvim/
local lspconfig = require('lspconfig')
local h = require('helpful')

-- handlers {{{
vim.lsp.handlers['textDocument/publishDiagnostics'] =
  vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      underline = true,
      virtual_text = true,
      signs = true,
      update_in_insert = true,
    }
  )
-- }}}

local saga = require('lspsaga')

saga.init_lsp_saga { border_style = 'round' }

-- on_attach {{{
local on_attach = function(client)
  h.buf_setoption { omnifunc = 'v:lua.vim.lsp.omnifunc' }
  -- Keybindings for LSPs
  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_exec(
      [[
    hi LspReferenceRead gui=underline

    augroup lsp_document_highlight
      autocmd! * <buffer>
      autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false
    )
  end
end
-- }}}

-- capabilities {{{
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- }}}

local sumneko_root_path = '/home/' .. vim.fn.expand('$USER') .. '/src/lua-language-server' -- {{{
local sumneko_binary = sumneko_root_path .. '/bin/Linux/lua-language-server'
lspconfig.sumneko_lua.setup {
  cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
      diagnostics = { globals = { 'vim', 'packer_plugins' } },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      hint = { enable = true },
      telemetry = { enabled = false },
    },
  },
  on_attach = on_attach,
  capabilities = capabilities,
}
-- }}}

local servers =
  { 'rust_analyzer', 'jsonls', 'tsserver', 'vimls', 'rnix', 'hls' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { on_attach = on_attach, capabilities = capabilities }
end

require('rust-tools').setup {
  tools = {
    inlay_hints = {
      show_parameter_hints = true,
      parameter_hints_prefix = 'ᐊ',
      other_hints_prefix = '»',
    },
  },
}
