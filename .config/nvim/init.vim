" My VIM configs
" --- Vim defaults
filetype plugin on
syntax enable
set number
set termguicolors
set shell=/bin/zsh

" --- Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Vundle start
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

runtime ./plugins/polyglot.vim
runtime ./plugins/utils.vim
runtime ./plugins/neovim.vim
runtime ./plugins/themes.vim
runtime ./plugins/laravel.vim

call vundle#end()
" Vundle end

" Active theme
colorscheme monokai

" Maps
runtime ./maps.vim

" Airline
runtime ./config/airline.vim

" NERDTree
runtime ./config/nerdtree.vim

" CtrlP
runtime ./config/ctrlp.vim

" CoC.nvim Setup
runtime ./config/coc.vim

" Laravel Blade setup
runtime ./config/laravel-blade.vim
