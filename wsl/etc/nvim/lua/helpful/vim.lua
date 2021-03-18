local M = {}

function M.setoption(optionTable)
  for option, value in pairs(optionTable) do
    vim.o[option] = value
  end
end

function M.setglobal(globalTable)
  for global, value in pairs(globalTable) do
    vim.g[global] = value
  end
end

function M.map(mode, lhs, rhs, opts)
  local options = { silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.noremap(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
