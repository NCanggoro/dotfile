" File              : vimrc
" Author            : BigDickA
" Date              : 27.10.2018
" Last Modified Date: 27.10.2018
" Last Modified By  : BigDickA
" File              : vimrc
" Date              : 27.10.2018
" Last Modified Date: 27.10.2018


set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim

syntax on

filetype off
call vundle#begin()

" plugins
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'janko-m/vim-test'
Plugin 'alfredodeza/coveragepy.vim'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on


set number
set tabstop=4
set guifont=Monospace:h24
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

set term=screen-256color


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" AirLine
let g:airline_theme ='badcat'
let g:airline_powerline_fonts = 1


" CtrlP

let g:ctrlp_map = '<c-p>'

"Gvim 
set encoding=utf-8
set hidden
set history=100
set mouse=a

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=Lo
