" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1


" my configs
" --- Vim defaults
filetype plugin on
syntax enable
set number
set termguicolors
set shell=/bin/zsh

"---  Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab


"""" START Vundle Configuration 

" Disable file type for vundle
" filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Polyglot
Plugin 'sheerun/vim-polyglot'
Plugin 'jwalton512/vim-blade'

" Utils
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ctrlpvim/ctrlp.vim'

" NeoVim
Plugin 'neovim/nvim-lspconfig'

" Themes
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sickill/vim-monokai'

" Laravel
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'

call vundle#end()

" Active theme
colorscheme monokai

" Maps
map <F5> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-j> :call CocActionAsync('jumpDefinition')<CR>
map <C-b> :CtrlPBuffer<CR>
map <C-l> :CocList outline<CR>
map <C-w> :bw<CR>
map <C-s> :w<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme='deus'

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor'

" CoC.nvim Setup
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
" Coc.nvim setup end

" Laravel Blade setup
let g:blade_custom_directives = ['section', 'extends']

let g:blade_custom_directives_pairs = {
      \   'section': 'endsection',
      \ }
" Laravel Blade setup end
