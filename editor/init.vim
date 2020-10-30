set shell=/bin/bash

"====================
" PLUGINS
"====================

" PLUG
set nocompatible
filetype off
" set rtp+=~/.vim/bundle/Vundle.vaim
call plug#begin('~/.local/share/vim/plugged')

"VIM enhancements
Plug 'ciaranm/securemodelines'
"Plug 'vim-scripts/localvimrc'
Plug 'justinmk/vim-sneak'

"GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'


" Completion plugins
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

"Syntatic Plugins
"Plug 'dag/vim-fish'
Plug 'alvan/vim-closetag'

call plug#end()

if has('nvim')
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
    set inccommand=nosplit
    noremap <C-q> :confirm qall<CR>
end

 " deal with colors
 if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif

" Colors
colorscheme gruvbox
let g:gruvbox_contrast_dark='medium'
set background=dark
hi Normal ctermbg=NONE
" Get syntax
syntax on

" WSL XTERM ISSUE
if &term =~ '^screen'
" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif



" Plugin settings Secure model lines
let g:secure_modelines_allowed_items = [
                \ "textwidth",   "tw",
                \ "softtabstop", "sts",
                \ "tabstop",     "ts",
                \ "shiftwidth",  "sw",
                \ "expandtab",   "et",   "noexpandtab", "noet",
                \ "filetype",    "ft",
                \ "foldmethod",  "fdm",
                \ "readonly",    "ro",   "noreadonly", "noro",
                \ "rightleft",   "rl",   "norightleft", "norl",
                \ "colorcolumn"
		\ ]

" Quick save
nmap <leader>w :w<CR>


" LightLine
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
\ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction


"==========================
"#EDITOR SETTINGS
"==========================
filetype plugin indent on


" Always draw sign column. Prevent buffer moving when adding/deleting sign.
set signcolumn=yes

" Sane splits
set splitright
set splitbelow

"==========================
"GUI SETTINGS
"==========================

set guioptions-=T " Remove toolbar
set guioptions-=m " Remove Menubar
set ruler
set colorcolumn=120
set synmaxcol=500
set number
set laststatus=2
set lazyredraw
set showcmd
set nolist
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" WSL ISSUE 
set autoindent
set smarttab

hi CursorLineNr guifg=DarkGrey			" Cursor Number Font Color
hi LineNr guifg=DarkGrey			" Other Numbers Font Color
hi ColorColumn ctermbg=235 guibg=grey28		" Column Color
set nolist


" ===========================================
" # Keyboard shortcut
" ===========================================

" let mapleader = ","
" nmap <leader>ne :NERDTreeToggle<cr>
nmap <silent> <C-b> :NERDTreeToggle<CR>

" WSL ISSUE
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
:imap jj <Esc>
nnoremap <esc>^[ <esc>^[
