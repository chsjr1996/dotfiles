" My VIM configs
" --- Vim defaults
filetype plugin on
syntax enable
set number
set termguicolors
set shell=/bin/zsh
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" -----------------------
" Vundle start
" -----------------------
" --- set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
runtime ./maps/general.vim
runtime ./maps/nerdtree.vim
runtime ./maps/ctrlp.vim
runtime ./maps/coc.vim

" Configs 
runtime ./config/airline.vim
runtime ./config/nerdtree.vim
runtime ./config/ctrlp.vim
runtime ./config/coc.vim
runtime ./config/laravel-blade.vim
runtime ./config/autoclosetag.vim

" Commands
runtime ./commands/coc.vim
