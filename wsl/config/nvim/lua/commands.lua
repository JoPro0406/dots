_G.Commands.edit_config = function()
  vim.api.nvim_command('cd ' .. vim.fn.stdpath('config'))
end

_G.Commands.compile_plugins = function()
  package.loaded['plugins'] = nil
  require('packer').compile()
end
