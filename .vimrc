
call plug#begin('~/.vim/plugged')
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


" =========== vim user settings ===========

source ~/.vim/settings/config.vim
source ~/.vim/settings/user-mappings.vim
source ~/.vim/settings/user-colors.vim



" =========== plugin user settings/mappings ===========

source ~/.vim/settings/plugins/nerdtree.vim
source ~/.vim/settings/plugins/fzf.vim
source ~/.vim/settings/plugins/lightline.vim
source ~/.vim/settings/plugins/gitgutter.vim
source ~/.vim/settings/plugins/nerdcommenter.vim
source ~/.vim/settings/plugins/betterwhitespace.vim
source ~/.vim/settings/plugins/vue.vim

