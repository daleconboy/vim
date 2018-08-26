" ==== mapppings ====

map <C-o> :NERDTreeToggle<CR>


" ==== settings ====

let g:NERDTreeMapActivateNode="l"
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore=['\.DS_Store$', '\.git$[[dir]]']
let g:NERDTreeShowHidden=1
let g:NERDTreeStatusline="%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path._strForUI():''}"
