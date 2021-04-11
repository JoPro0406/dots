local M = {}

M.light = {
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

M.dark = {
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
function M.colour(val)
  return function()
    if vim.o.background == 'light' then
      return M.light[val]
    elseif vim.o.background == 'dark' then
      return M.dark[val]
    end
  end
end
function M.get_colour(val)
  if vim.o.background == 'light' then
    return M.light[val]
  elseif vim.o.background == 'dark' then
    return M.dark[val]
  end
end

return M
