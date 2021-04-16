-- https://github.com/neovim/nvim-lspconfig/
-- https://github.com/glepnir/lspsaga.nvim/
-- https://github.com/nvim-lua/lsp_extensions.nvim/
local lspconfig = require('lspconfig')
local h = require('helpful')

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

local saga = require('lspsaga')

saga.init_lsp_saga()

-- on_attach {{{
local on_attach = function(client, bufnr)
  h.buf_setoption { omnifunc = 'v:lua.vim.lsp.omnifunc' }
  -- Keybindings for LSPs
  h.buf_noremap(
    bufnr, 'n', 'gd', '<cmd>lua require("lspsaga.provider").preview_definition()<CR>'
  )
  h.buf_noremap(
    bufnr, 'n', 'gD', '<cmd>lua require("lspsaga.provider").lsp_finder()<CR>'
  )
  h.buf_noremap(
    bufnr, 'n', 'gh', '<cmd>lua require("lspsaga.hover").render_hover_doc()<CR>'
  )
  h.buf_noremap(
    bufnr, 'n', 'gs', '<cmd>lua require("lspsaga.signaturehelp").signature_help()<CR>'
  )
  h.buf_noremap(
    bufnr, 'n', 'ca', '<cmd>lua require("lspsaga.codeaction").code_action()<CR>'
  )
  h.buf_noremap(
    bufnr, 'v', 'ca', ':<C-U>lua require("lspsaga.codeaction").range_code_action()<CR>'
  )
  h.buf_noremap(bufnr, 'n', 'gr', '<cmd>lua require("lspsaga.rename").rename()<CR>')
end
-- }}}

-- capabilities {{{
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
-- }}}

local sumneko_root_path = vim.fn.stdpath('cache') .. '/lsp/lua-language-server' -- {{{
local sumneko_binary = sumneko_root_path .. '/bin/Linux/lua-language-server'
lspconfig.sumneko_lua.setup(
  {
    cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
    settings = {
      Lua = {
        runtime = { version = 'LuaJIT', path = vim.split(package.path, ';') },
        diagnostics = { globals = { 'vim', 'use', 'packer_plugins' } },
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

local servers = { 'rust_analyzer', 'jsonls', 'tsserver', 'vimls' }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup { on_attach = on_attach, capabilities = capabilities }
end
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- lsp_extensions {{{

_G.inlay_hints = function()
  require('lsp_extensions').inlay_hints {
    prefix = ' » ',
    highlight = 'Comment',
    aligned = false,
    only_current_line = false,
    enabled = { 'TypeHint', 'ParameterHint', 'ChainingHint' },
  }
end

vim.api.nvim_exec(
  [[autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua inlay_hints()]], true
)

-- }}}
