
" Quick save
noremap <Leader>w :w<CR>


" Clear last search pattern
nmap <leader>h :noh<CR>

" Split navigation
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Move normally between wrapped lines
nmap j gj
nmap k gk

" Add blank lines without entering insert
nmap <Enter> o<Esc>
