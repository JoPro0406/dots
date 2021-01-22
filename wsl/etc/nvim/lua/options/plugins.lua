local globals = {
  indentLine_setColors = 0,
  indentLine_enabled = 0,
  indentLine_leadingSpaceEnabled = 1,
  indentLine_leadingSpaceChar = '·',
  indentLine_fileTypeExclude = {'dashboard'},
}
for glob, val in pairs(globals) do
  vim.g[glob] = val
end
