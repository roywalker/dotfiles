" -------------
" Vundle setup
" -------------

set nocompatible 
filetype off

" Set the runtime path to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()            " required
filetype plugin indent on    " required

" ------------
" Basic setup
" ------------

syntax on " Turn on syntax highlighting.
set showmatch " show matching braces when text indicator is over them
set shortmess+=I " Disable the default Vim startup message.
set autoindent
set number " Show line numbers.
set relativenumber " Show relative line numbers.
set laststatus=2 " Always show the status line, even if you only have one window open.
set backspace=indent,eol,start " Upgrade backspace behavior
set hidden " Allow unsaved changes in inactive buffers.
set ignorecase " Make search case insenstive, unless you type an uppercase character.
set smartcase
set incsearch " Enable search as you type, rather than waiting till you press enter.
set noerrorbells visualbell t_vb= " Disable audible bell
set mouse+=a " Enable mouse support
set textwidth=72 " Set column width
set tabstop=2 " Set tab settings
set softtabstop=2
set shiftwidth=2
set expandtab

" highlight current line, but only in active window
augroup CursorLineOnlyInActiveWindow
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup END

" open split paanes to the right and bottom
set splitbelow
set splitright

" ----------
"  Bindings
"  ---------

nmap Q <Nop> 

" Add shorcut for CtrlP plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set binding for moving keys (cmd+j/k)
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" --------
"  Others
" --------

" Set custom colors for Vim 'onedark' theme
let g:onedark_color_overrides = {
\ "black": {"gui": "#1c1c1c", "cterm": "233", "cterm16": "0" }
\}

colorscheme onedark

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=232
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=red   ctermbg=234
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indet_guides_start_level = 0
