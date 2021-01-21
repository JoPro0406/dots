" ========== Plugin Options ========= "
" lua
lua require('lsp')
lua require('treesitter')
set completeopt=menuone,noinsert,noselect
let g:completion_chain_complete_list = {
      \ 'default': [
      \   {'complete_items': ['lsp', 'snippet', 'tabnine' ]},
      \   {'mode': '<c-p>'},
      \   {'mode': '<c-n>'}
      \ ]
      \ }
let g:completion_tabnine_priority = 1

" ale
let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ '*': [ 'remove_trailing_lines', 'trim_whitespace' ],
      \ }

" lightline
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \
      \ 'active': {
      \   'left' : [ [ 'mode', 'paste'  ],
      \              [ 'gitbranch', 'filename'] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \ },
      \
      \ 'tabline': {
      \   'left' : [ [ 'buffers' ]  ],
      \   'right': [ [ 'close' ]  ],
      \ },
      \
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \
      \ 'component_expand': {
      \   'buffers'       : 'lightline#bufferline#buffers',
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos'   : 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors'  : 'lightline#ale#errors',
      \  'linter_ok'      : 'lightline#ale#ok',
      \ },
      \
      \ 'component_type': {
      \   'buffers'        : 'tabsel',
      \   'linter_checking': 'right',
      \   'linter_infos'   : 'right',
      \   'linter_warnings': 'warning',
      \   'linter_errors'  : 'error',
      \   'linter_ok'      : 'right',
      \ }
      \ }

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_fileTypeExclude = ['dashboard']

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEpmtyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" dashboard-nvim
let g:dashboard_default_header = 'commicgirl15'
let g:dashboard_default_executive = 'telescope'
let g:dashboard_custom_shortcut = {
      \ 'last_session'       : 'SPC s l',
      \ 'find_history'       : 'SPC f h',
      \ 'find_file'          : 'SPC f f',
      \ 'new_file'           : 'SPC n f',
      \ 'change_colorscheme' : 'SPC t c',
      \ 'find_word'          : 'SPC f a',
      \ 'book_marks'         : 'SPC f b',
      \ }
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

" nvim-colorizer
lua require'colorizer'.setup()
