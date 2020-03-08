" <Vundle>
set nocompatible 
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" </Vundle>

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Show relative line numbers.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Upgrade backspace behavior
set backspace=indent,eol,start

" Allow unsaved changes in inactive buffers.
set hidden

" Make search case insenstive, unless you type an uppercase character.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless default key binding
nmap Q <Nop>

" Disable audible bell
set noerrorbells visualbell t_vb=

" Enable mouse support
set mouse+=a

" Add shorcut for CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set column width
set textwidth=72

" Set tab settings
set tabstop=2
set softtabstop=2
set et

" Set binding for moving keys (cmd+j/k)
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Set custom colors for Vim 'onedark' theme
let g:onedark_color_overrides = {
\ "black": {"gui": "#1c1c1c", "cterm": "233", "cterm16": "0" }
\}
colorscheme onedark
