local lspconfig = require('lspconfig')
local hv = require('helpful.vim')

-- handlers {{{
vim.lsp.handlers['textDocument/publishDiagnostics'] =
  vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      underline = false,
      virtual_text = true,
      signs = true,
      update_in_insert = true,
    }
  )
-- }}}

-- on_attach {{{
local on_attach = function()
  -- Keybindings for LSPs
  hv.noremap(
    'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { silent = true }
  )
  hv.noremap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', { silent = true })
  hv.noremap(
    'n', 'gD', '<cmd>lua vim.lsp.buf.implementation()<CR>', { silent = true }
  )
  hv.noremap(
    'n', '<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', { silent = true }
  )
  hv.noremap(
    'n', '1gD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', { silent = true }
  )
  hv.noremap(
    'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { silent = true }
  )
  hv.noremap(
    'n', 'g0', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', { silent = true }
  )
  hv.noremap(
    'n', 'gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', { silent = true }
  )
end
-- }}}

-- capabilities {{{
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- }}}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.vimls.setup { on_attach = on_attach, capabilities = capabilities }
local sumneko_root_path = vim.fn.stdpath('cache') .. '/lsp/lua-language-server' -- {{{
local sumneko_binary = sumneko_root_path .. '/bin/Linux/lua-language-server'
lspconfig.sumneko_lua.setup(
  {
    cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
    settings = {
      Lua = {
        runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
        diagnostics = { globals = { 'vim', 'use' } },
        workspace = {
          library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
          },
        },
      },
    },
    on_attach = on_attach,
    capabilities = capabilities,
  }
) -- }}}
lspconfig.jsonls.setup { on_attach = on_attach, capabilities = capabilities }
lspconfig.tsserver.setup { on_attach = on_attach, capabilities = capabilities }
