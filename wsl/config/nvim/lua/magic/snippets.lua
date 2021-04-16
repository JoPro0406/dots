-- https://github.com/norcalli/snippets.nvim/
local snippets_nvim = require('snippets')

local snips = {}

snips._global = {
  ['date'] = [[${=os.date('%Y-%m-%d')}]],
}

snips.lua = {
  req = [[local ${2:${1|S.v:match('%w+$')}} = require('$1')]]
}

snippets_nvim.snippets = snips
