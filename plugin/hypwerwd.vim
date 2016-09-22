" Hyperwd's init.vim
" ================
"
" Read the comments for the useful plugins' keystrokes.
"
" It meets the unadorned requirements of Python development, but any feature
" request or bug report is welcome. Send mail to Hyperwd <dongwei_chao@163.com>.
"
" Copyright (c) 2016 Hyperwd, and licensed under MIT:
" https://opensource.org/licenses/MIT.
"
" use vim-plug to manage plugins, see
" https://github.com/junegunn/vim-plug#usage
" Thanks
" for details

filetype plugin on
filetype indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
"set textwidth=79
set expandtab
set autoindent
set number
set relativenumber
set encoding=utf-8

"System clipboard
set clipboard=unnamed

"Enable folding by indent
set foldmethod=indent

"Not folding when opening file
set foldlevel=99

"Enable synatx,make your code look pretty
let python_highlight_all=1
syntax on


"Enable split windows with ctrl+h,j,k,l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"simpylfold:see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

"extra whitespace as bad,probably red color"
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"youcompleteme:The former line ensures that the autocomplete window goes away
"when you’re done with it, and the latter defines a shortcut for goto
"definition."
let g:ycm_autoclose_preview_window_after_completion=1

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
let g:vimrc_author='DeanDong' 
let g:vimrc_email='435904632@qq.com' 
let g:vimrc_homepage='http://www.vimer.cn' 
nmap <F4> :AuthorInfoDetect<cr> 

"vimball's install drawit.vim
"http://www.vim.org/scripts/script.php?script_id=40
