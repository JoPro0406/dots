require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.sumneko_lua.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.vimls.setup{ on_attach=require'completion'.on_attach }