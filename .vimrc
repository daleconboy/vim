
call plug#begin()
Plug 'dikiaap/minimalist'
Plug '/usr/local/opt/fzf'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'cocopon/iceberg.vim'
Plug 'fcpg/vim-orbital'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
call plug#end()


" Make vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
if exists("&undodir")
  set undodir=~/.vim/undo//
endif

set termguicolors

" Quick save
noremap <Leader>w :w<CR>

" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline

" Allow hidden buffers
set hidden

" Make tabs as wide as two spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set expandtab

" Rulers at 80 and 120 columns
set colorcolumn=81,121

" Always show the sign column
set signcolumn=yes

" Show “invisible” characters
set lcs=tab:›\ ,trail:∙,eol:¬,nbsp:_,space:∙
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting vim
set shortmess=atI
" Show the current mode
set noshowmode
" Show the filename in the window titlebar
set title

" Start scrolling n lines before the horizontal window border
set scrolloff=8

" short update time for things like git-gutter
set updatetime=750

" Clear last search pattern
nmap <leader>h :noh<CR>

" Split navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Add blank lines without entering insert
nmap <Enter> o<Esc>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" FZF
nmap <C-p> :FZF<CR>

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


" Personal preference color scheming
 colorscheme iceberg 
"hi CursorLine                  ctermbg=235   cterm=none
"hi CursorColumn                ctermbg=226
hi LineNr      ctermbg=234
hi SpecialKey ctermbg=none
hi NonText ctermbg=none
hi Normal ctermbg=191919

hi GitGutterAdd ctermbg=234
hi GitGutterChange ctermbg=234 ctermfg=75
hi GitgutterChangeDelete ctermbg=234
hi GitGutterDelete ctermbg=234

hi LightlineRight_normal_0_1 cterm=none ctermfg=196
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
