let g:airline_theme='material_darker'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#branch#enabled=1
let g:airline_section_z = airline#section#create_right(['L: %l', 'C: %c'])

" --- Disabled
let g:airline#extensions#tabline#tab_nr_type = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
