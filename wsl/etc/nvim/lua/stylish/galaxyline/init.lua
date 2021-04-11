local gl = require('galaxyline')
local glc = require('galaxyline.condition')
local c = require('stylish.galaxyline.colours')

local gls = gl.section
local cl = c.colour
local gc = c.get_colour

-- helpers {{{

local function mode_colour()
  local colour = {
    n = gc 'yellow',
    no = gc 'yellow',
    v = gc 'purple',
    V = gc 'purple',
    [''] = gc 'purple',
    s = gc 'cyan',
    S = gc 'cyan',
    [''] = gc 'cyan',
    i = gc 'blue',
    c = gc 'yellow',
    R = gc 'red',
    t = gc 'blue',
  }
  return colour[vim.fn.mode()] or gc 'yellow'
end

-- }}}

gl.short_line_list = { 'packer', 'NvimTree' }

gls.short_line_left = { { ShortFileName = { provider = 'FileName' } } }
gls.short_line_right = { { ShortLineColumn = { provider = 'LineColumn' } } }

gls.left = {
  {
    rounded_left = {
      provider = function()
        vim.api.nvim_command('hi Galaxyrounded_left guifg=' .. mode_colour())
        return ''
      end,
      highlight = { cl 'yellow', cl 'bg2' },
    },
  },
  {
    ViMode = {
      provider = function()
        local alias = {
          n = 'NORMAL',
          no = 'NORMAL',
          v = 'VISUAL',
          V = 'V-LINE',
          [''] = 'V-BLOCK',
          s = 'SELECT',
          S = 'S-LINE',
          [''] = 'S-BLOCK',
          i = 'INSERT',
          c = 'COMMAND',
          R = 'REPLACE',
          t = 'TERMINAL',
        }
        vim.api.nvim_command('hi GalaxyViMode guibg=' .. mode_colour())
        return alias[vim.fn.mode()] .. ' '
      end,
      highlight = { cl 'fg2', cl 'fg2', 'bold' },
    },
  },
  {
    FileIcon = {
      provider = {
        function()
          return '  '
        end,
        'FileIcon',
      },
      condition = glc.buffer_not_empty,
      highlight = {
        require('galaxyline.provider_fileinfo').get_file_icon_color,
        cl 'bg1',
      },
    },
  },
  {
    FileName = {
      provider = 'FileName',
      condition = glc.buffer_not_empty,
      highlight = { cl 'fg', cl 'bg1' },
      separator = '▐',
      separator_highlight = { cl 'yellow', cl 'bg1' },
    },
  },
  {
    DiffAdd = {
      provider = 'DiffAdd',
      condition = glc.hide_in_width,
      icon = '  ',
      highlight = { cl 'yellow', cl 'bg2' },
    },
  },
  {
    DiffModified = {
      provider = 'DiffModified',
      condition = glc.hide_in_width,
      icon = ' 柳 ',
      highlight = { cl 'green', cl 'bg2' },
      separator = ' ', -- fix for weird space in bar
      separator_highlight = { 'NONE', cl 'bg2' },
    },
  },
  {
    DiffRemove = {
      provider = 'DiffRemove',
      condition = glc.hide_in_width,
      icon = ' ',
      highlight = { cl 'red', cl 'bg2' },
    },
  },
}

gls.mid = {
  {
    DiagnosticWarning = {
      provider = 'DiagnosticWarn',
      icon = '  ',
      highlight = { cl 'yellow', cl 'bg2' },
    },
  },
  {
    DiagnosticError = {
      provider = 'DiagnosticError',
      icon = '  ',
      highlight = { cl 'red', cl 'bg2' },
    },
  },
}

gls.right = {
  {
    GitBranch = {
      provider = 'GitBranch',
      icon = ' ',
      condition = glc.check_git_workspace,
      highlight = { cl 'yellow', cl 'bg2' },
    },
  },
  {
    LineColumn = {
      provider = function()
        local line = vim.fn.line('.')
        local column = vim.fn.col('.')
        return line .. ':' .. column
      end,
      highlight = { cl 'fg', cl 'bg1' },
      separator = '▊ ',
      separator_highlight = { cl 'yellow', cl 'bg1' },
    },
  },
  {
    LinePercent = {
      provider = 'LinePercent',
      highlight = { cl 'fg2', cl 'yellow' },
      separator = ' ',
      separator_highlight = { 'NONE', cl 'bg1' },
    },
  },
  {
    rounded_right = {
      provider = function()
        return ''
      end,
      highlight = { cl 'yellow', cl 'bg2' },
    },
  },
}
