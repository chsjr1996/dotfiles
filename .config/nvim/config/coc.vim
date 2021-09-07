inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Start Coc recomends
set encoding=utf-8
set hidden

" Some LS have problems with backup files (Coc)
set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" End Coc recomends
