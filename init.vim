set shell=/bin/bash

"====================
" PLUGINS
"====================

" PLUG
set nocompatible
filetype off
" set rtp+=~/.vim/bundle/Vundle.vaim
call plug#begin('~/.local/share/nvim/plugged')

"VIM enhancements
Plug 'ciaranm/securemodelines'
Plug 'vim-scripts/localvimrc'
Plug 'justinmk/vim-sneak'

"GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'andymass/vim-matchup'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Completion plugins
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

"Syntatic Plugins
Plug 'dag/vim-fish'
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
set background=dark
hi Normal ctermbg=NONE
" Get syntax
syntax on


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
set ruler
set ttyfast
set colorcolumn=120
set synmaxcol=500
set number
set relativenumber
hi CursorLineNr guifg=DarkGrey			" Cursor Number Font Color
hi LineNr guifg=DarkGrey			" Other Numbers Font Color
hi ColorColumn ctermbg=235 guibg=grey28		" Column Color
set nolist


" ===========================================
" # Keyboard shortcut
" ===========================================

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

