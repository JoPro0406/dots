local M = {}

-- @Summary Sets a vim option
-- @Description Sets specified vim options.
-- @Param  opts (table) - table with option as key and value as value
function M.setoption(opts)
  for option, value in pairs(opts) do
    vim.o[option] = value
  end
end

-- @Summary Sets vim option buffer-local
-- @Description Sets specified vim options buffer-local.
-- @Param  opts (table) - table with option as key and value as value
function M.buf_setoption(opts)
	for option, value in pairs(opts) do
		vim.bo[option] = value
	end
end

-- @Summary Sets a vim global variable
-- @Description Sets specified variables as global vim variables
-- @Param  globs (table) - table with global as key and value as value
function M.setglobal(globs)
  for global, value in pairs(globs) do
    vim.g[global] = value
  end
end

-- @Summary Sets a key mapping
-- @Description Light wrapper around vim.api.nvim_set_keymap(). Automatically sets silent to true.
-- @Param  mode (string) - character defining the vim mode. empty for all
-- @Param  lhs (string) - the key compbination
-- @Param  rhs (string) - the action to execute
-- @Param  opts (table) - options passed to the function
function M.map(mode, lhs, rhs, opts)
  local options = { silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- @Summary Sets a noremap key mapping
-- @Description Light wrapper around vim.api.nvim_set_keymap(). Automatically sets silent and noremap to true.
-- @Param  mode (string) - character defining the vim mode. empty for all
-- @Param  lhs (string) - the key compbination
-- @Param  rhs (string) - the action to execute
-- @Param  opts (table) - options passed to the function
function M.noremap(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- @Summary Sets a buffer-local noremap key mapping
-- @Description Light wrapper around vim.api.nvim_buf_set_keymap(). Automatically sets silent and noremap to true.
-- @Param  mode (string) - character defining the vim mode. empty for all
-- @Param  lhs (string) - the key compbination
-- @Param  rhs (string) - the action to execute
-- @Param  opts (table) - options passed to the function
function M.buf_noremap(bufnr, mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
  if opts then
  	options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
end

return M
