" Hyperwd's hyperwd.vim
" ================
"
" It meets the unadorned requirements of Python development, but any feature
" request or bug report is welcome. Send mail to Hyperwd <dongwei_chao@163.com>.
"
" Copyright (c) 2016 Hyperwd, and licensed under MIT:
" https://opensource.org/licenses/MIT.
"
" This plugin is used to manage vim settings for vim-plug.
"
" Thanks
" for details

filetype plugin on
filetype indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set colorcolumn=81
set nowrap
set nolinebreak
set expandtab
set autoindent
set number
set relativenumber
set encoding=utf-8
set showmatch
set backspace=indent,eol,start
set formatoptions-=t
"System clipboard
"set clipboard=unnamed

"Enable folding by indent
set foldmethod=indent

"Not folding when opening file
set foldlevel=99

"Enable synatx,make your code look pretty
let python_highlight_all=1
syntax on

"Enable folding with space
"nnoremap <space> za

"Enable split windows with ctrl+h,j,k,l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"simpylfold:see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"extra whitespace as bad,probably red color"
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"a bit of logic to define which scheme to use based upon the VIM mode
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

"Solarized also ships with a dark and light theme. To make switching between
"them very easy (by pressing F5)
call togglebg#map("<F5>")

"open NerdTree with ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
"let NERDTreeWinSize=30

"open Tagbar with <F8> 
nmap <F8> :TagbarToggle<CR>
"let g:tagbar_width = 30

"authorinfo
let g:vimrc_author='Dong Wei Chao' 
let g:vimrc_email='435904632@qq.com' 
let g:vimrc_homepage='https://github.com/hyperwd' 
nmap <F4> :AuthorInfoDetect<cr> 

"vimball's install drawit.vim
"http://www.vim.org/scripts/script.php?script_id=40

"<F1> set fileencoding
"<F2> set paste
"<F3> set nopaste
nmap <F1> :set fileencoding<CR>
nmap <F2> :set paste<CR>
nmap <F3> :set nopaste<CR>
