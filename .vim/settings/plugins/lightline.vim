

" ==== mapppings ====


" ==== settings ====

let g:lightline = {
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
  \   'right': '│'
  \ },
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'readonly', 'filename' ] ],
  \ },
  \ 'component_function': {
  \   'filename': 'LightlineFilename',
  \ },
  \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[none]'
  let modified = &modified ? '◦ ' : '• '
  return modified . filename
endfunction
