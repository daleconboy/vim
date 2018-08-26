
" Quick save
noremap <Leader>w :w<CR>


" Clear last search pattern
nnoremap <leader>h :noh<CR>

" Split navigation
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Move normally between wrapped lines
nnoremap j gj
nnoremap k gk

" Add blank lines without entering insert
nnoremap <Enter> o<Esc>

" Buffer navigation
set <M-h>=h
set <M-l>=l
nnoremap <M-h> :bprevious<CR>
nnoremap <M-l> :bnext<CR>
