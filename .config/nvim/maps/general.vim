" --- keymaps
"
" Exiting & saving
map <C-w> :bw<CR>
map <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>
map <C-q> :q<CR>

" - Move lines
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>

" - Clipboard
map <C-y> "+y"

" - Search
map <M-c> :noh<CR>

" - Netrw
map <C-n> :Explore<CR>
map <F5> :Explore<CR>
map <M-h> :help netrw-quickmap<CR>

" - Tab splits
nmap <M-up> :wincmd k<CR>
nmap <M-down> :wincmd j<CR>
nmap <M-left> :wincmd h<CR>
nmap <M-right> :wincmd l<CR>
