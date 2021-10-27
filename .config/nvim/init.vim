" 
"
"

" General vim configs "{{{
" ---------------------------------------------------------------------
filetype plugin on
syntax enable
set number
set termguicolors
set shell=zsh
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set mouse=a
set cursorline
" }}}"

" Vundle start "{{{
" ---------------------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

runtime ./plugins/polyglot.vim
runtime ./plugins/utils.vim
runtime ./plugins/preservim.vim
runtime ./plugins/neovim.vim
runtime ./plugins/themes.vim
runtime ./plugins/laravel.vim

call vundle#end()
" }}}""

" Maps "{{{
" ---------------------------------------------------------------------
runtime ./maps/general.vim
runtime ./maps/preservim.vim
runtime ./maps/fzf.vim
runtime ./maps/coc.vim
" }}}"

" Configs "{{{
" ---------------------------------------------------------------------
runtime ./config/airline.vim
runtime ./config/coc.vim
runtime ./config/laravel-blade.vim
runtime ./config/autoclosetag.vim
runtime ./config/theme.vim
runtime ./config/netrw.vim
" }}}"

" Commands "{{{
" ---------------------------------------------------------------------
runtime ./commands/coc.vim
" }}}"
