set nocompatible

"set rtp+=~/.vim/bundle/Vundle.vim

syntax on

call plug#begin('~/.vim/plugged/')
"call vundle#begin()


" plugins
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'rust-lang/rust.vim'
Plug 'elixir-editors/vim-elixir'
"Plugin 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
"Plugin 'christoomey/vim-tmux-navigator'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-markdown'
Plug 'flazz/vim-colorschemes'
"Plugin 'bronson/vim-trailing-whitespace'
Plug 'leafgarland/typescript-vim'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'pangloss/vim-javascript'
"Plugin 'janko-m/vim-test'
"Plugin 'alfredodeza/coveragepy.vim'

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
call plug#end()
"call vundle#end()
filetype plugin indent on


set autoindent
set shiftwidth=2
set number
set tabstop=2
set smarttab
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

" Keyboard Shortcut
nmap <silent> <C-b> :NERDTreeToggle<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
:imap jj <Esc>
nnoremap <esc>^[ <esc>^[

if &term =~ '^screen'
" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif
