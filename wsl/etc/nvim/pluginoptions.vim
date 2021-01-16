" ---------- Plugin Options --------- "
" lua
lua require('lsp')
lua require('treesitter')
set completeopt=menuone,noinsert,noselect

" airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
" let g:airline_theme = 'ayu_dark'
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

" lightline
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
      \
      \ 'active': {
      \   'left':   [ [ 'mode', 'paste'  ],
      \               [ 'gitbranch', 'filename'] ],
      \   'right':  [ [ 'lineinfo' ],
      \               [ 'percent' ],
      \               [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \
      \ 'tabline': {
      \   'left':   [ [ 'buffers' ]  ],
      \   'right':  [ [ 'close' ]  ]
      \ },
      \
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \
      \ 'component_type': {
      \   'buffers': 'tabsel'
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
