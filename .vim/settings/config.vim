
" ============= general =============

set nocompatible            " Make vim more useful
set wildmenu                " Enhance command-line completion
set ttyfast                 " Optimize for fast terminal connections
set encoding=utf-8 nobomb   " Default to utf-8
let mapleader=","           " comma, comma, comma, chameleon
set noerrorbells            " No bells for errors
set visualbell              " No bells at all
set updatetime=500          " Short update time for things like git-gutter
set autoread                " Reload files changed outside of vim


" ============= display =============

set shortmess=atI           " Don’t show the intro message when starting vim
set number                  " Enable line numbers
set cursorline              " Highlight current line
set signcolumn=yes          " Always show the sign column
set colorcolumn=81,121      " Rulers at 80 and 120 columns
set list                    " Display whitespace, char mappings below
set lcs=tab:›\ ,trail:∙,eol:¬,nbsp:_,space:∙
set laststatus=2            " Always show status line
set ruler                   " Show the cursor position
set noshowmode              " Mode reporting disabled in favor of Lightline
set title                   " Show the filename in the window titlebar
set showcmd                 " Show commands as you type
set termguicolors           " Enables 24bit color. Escape codes needed for use inside tmux
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"


" ============= movement/interaction =============

set esckeys                 " Allow cursor keys in insert mode
set mouse=a                 " Enable mouse in all modes
set nostartofline           " Don’t reset cursor to start of line when moving
set scrolloff=8             " Scroll n lines before top/bottom of window
set sidescrolloff=8         " Scroll n lines before left/right of window


" ============= search =============

set gdefault                " default the `g` flag
set hlsearch                " Highlight searches
set ignorecase              " Ignore case in searches
set incsearch               " Highlight dynamically as pattern is typed


" ============= backups/swap files =============

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups//
set directory=~/.vim/swaps//
if exists("&undodir")
  set undodir=~/.vim/undo//
endif


" ============= indentation/wrapping =============

" Default to two spaces for tabs/indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab
filetype indent on
set nowrap                  " Default to no text wrapping


" ============= buffers =============

set hidden                  " Allow hidden buffers

