runtime ./_coc_func.vim

" --- Coc
map <C-j> :call CocActionAsync('jumpDefinition')<CR>
map <C-h> :call CocActionAsync('doHover')<CR>
map <M-r> :call CocActionAsync('rename')<CR>
"map <C-l> :CocList outline<CR>
map <C-l> :CocFzfList outline<CR>
map <C-LeftMouse> <Plug>(coc-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()
nnoremap <silent> K :call <SID>show_documentation()<CR>
