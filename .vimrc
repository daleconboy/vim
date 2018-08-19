
call plug#begin()
Plug 'dikiaap/minimalist'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'cocopon/iceberg.vim'
Plug 'fcpg/vim-orbital'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
call plug#end()

source ~/.vim/settings/config.vim
source ~/.vim/settings/user-mappings.vim
source ~/.vim/settings/user-colors.vim




" fzf.vim
nmap <C-p> :Files<CR>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode="l"
let NERDTreeMinimalUI=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$[[dir]]']

" Lightline
let g:lightline = {
  \ 'colorscheme': 'deus_conboy',
  \ 'mode_map': {
      \ 'n':      'NRM',
      \ 'i':      'INS',
      \ 'R':      'REP',
      \ 'v':      'VIS',
      \ 'V':      'VLN',
      \ "\<C-v>": 'VBL',
      \ 'c':      'CMD',
      \ 's':      'SEL',
      \ 'S':      'SLN',
      \ "\<C-s>": 'SBL',
      \ 't':      'TRM',
  \ },
  \ 'subseparator': {
      \ 'left': '│',
      \ 'right': '│'
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



hi GitGutterAdd ctermbg=234
hi GitGutterChange ctermbg=234 ctermfg=75
hi GitgutterChangeDelete ctermbg=234
hi GitGutterDelete ctermbg=234

" NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1

" Use compoact syntax for prettified mulit-line comments
let g:NERDCompactSexyComs=1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign='left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines=1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace=1

" Enable NERDCommenterToggle to check if all selected lines are commented or not
let g:NERDToggleCheckAllLines=1

" GitGutter
" some characters to use for status indicators
" ✗∎⎮∣┃│▐╏▕
let g:gitgutter_sign_added = '∣'
let g:gitgutter_sign_modified = '∣'
let g:gitgutter_sign_removed = '∣'
let g:gitgutter_sign_removed_first_line = '∣'
let g:gitgutter_sign_modified_removed = '∣'

" Prevent performance issues with vim-vue
let g:vue_disable_pre_processors=1

" Better Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
