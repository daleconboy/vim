

" ==== mapppings ====


" ==== settings ====

let g:lightline = {
  \ 'enable': {
  \   'tabline': 0
  \ },
  \ 'colorscheme': 'deus_conboy',
  \ 'mode_map': {
  \   'n':      'NRM',
  \   'i':      'INS',
  \   'R':      'REP',
  \   'v':      'VIS',
  \   'V':      'VLN',
  \   "\<C-v>": 'VBK',
  \   'c':      'CMD',
  \   's':      'SEL',
  \   'S':      'SLN',
  \   "\<C-s>": 'SBK',
  \   't':      'TRM',
  \ },
  \ 'subseparator': {
  \   'left': '│',
  \   'right': '◇'
  \ },
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename' ] ],
  \   'right': [ [ 'lineinfo' ],
  \             [ 'fileformat', 'fileencoding', 'filetype'] ],
  \ },
  \ 'inactive': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename' ] ],
  \   'right': [ [ 'lineinfo' ],
  \             [ 'fileformat', 'fileencoding', 'filetype'] ],
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \   'lineinfo': 'NerdTreeLineinfo',
  \   'fileformat': 'NerdTreeFileFormat',
  \   'fileencoding': 'NerdTreeFileEncoding',
  \   'filetype': 'NerdTreeFileType',
  \   'readonly': 'NerdTreeReadOnly',
  \   'mode': 'NerdTreeMode'
  \ }
  \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[none]'
  let modified = &modified ? '◦ ' : '• '
  return &filetype ==# 'nerdtree' ? '' : modified . filename
endfunction

function! NerdTreeLineinfo()
  return &filetype ==# 'nerdtree' ? '' : printf('%02d:%02d', line('.'), col('.'))
endfunction

function! NerdTreeFileFormat()
  return &filetype ==# 'nerdtree' ? '' : &fileformat
endfunction

function! NerdTreeFileEncoding()
  return &filetype ==# 'nerdtree' ? '' : &encoding
endfunction

function! NerdTreeFileType()
  return &filetype ==# 'nerdtree' ? '' : &filetype
endfunction

function! NerdTreeReadOnly()
  return &filetype ==# 'nerdtree' ? '' : &readonly ? 'RO' : ''
endfunction

function! NerdTreeMode()
  return &filetype ==# 'nerdtree' ? 'NERD' : lightline#mode()
endfunction


function! LLR()
  call lightline#init()
  call lightline#colorscheme()
  call lightline#update()
endfunction
