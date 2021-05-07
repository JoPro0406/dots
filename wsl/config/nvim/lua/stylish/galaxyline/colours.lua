-- TODO: when actually on linux, make the colors xresources-dependent
local xres = require('xresources')

local M = {}

M.ayu_light = {
  fg = '#575f66',
  fg2 = '#eff0f1',
  bg1 = '#cdd0d3',
  bg2 = '#ffffff',
  red = '#f51818',
  green = '#99bf4d',
  yellow = '#ff9940',
  blue = '#709ecc',
  purple = '#a37acc',
  cyan = '#4cbf99',
}

M.ayu_dark = {
  fg = '#b3b1ad',
  fg2 = '#00010a',
  bg1 = '#323945',
  bg2 = '#0d1016',
  red = '#ff3333',
  green = '#91b362',
  yellow = '#ff8f40',
  blue = '#6994bf',
  purple = '#a37acc',
  cyan = '#95e6cb',
}

M.xresources = {
  fg1 = xres.fg,
  fg2 = vim.o.background == 'light' and xres.white or xres.black,
  bg1 = xres.grey1,
  bg2 = xres.grey,
  red = xres.red,
  green = xres.green,
  yellow = xres.yellow,
  blue = xres.blue,
  purple = xres.purple,
  cyan = xres.light_cyan,
}

function M.colour(val)
  return function()
    if vim.g.colors_name == 'ayu' then
      if vim.o.background == 'light' then
        return M.ayu_light[val]
      elseif vim.o.background == 'dark' then
        return M.ayu_dark[val]
      end
    elseif vim.g.colors_name == 'xresources' then
      return M.xresources[val]
    end
  end
end
function M.get_colour(val)
  if vim.g.colors_name == 'ayu' then
    if vim.o.background == 'light' then
      return M.ayu_light[val]
    elseif vim.o.background == 'dark' then
      return M.ayu_dark[val]
    end
  elseif vim.g.colors_name == 'xresources' then
    return M.xresources[val]
  end
end

return M
