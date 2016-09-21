"""Set up Vundle"""
"$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"""Start of VundleVim's configure"""
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" Keep Plugin commands between vundle#begin/end.

"super Code Folding
Plugin 'tmhedberg/SimpylFold'
"Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'
"Auto-complete,after PluginInstall,cd ~/.vim/bundle/YouCompleteMe &&
"./install.py
Bundle 'Valloric/YouCompleteMe'
"Syntax Checking/Highlighting
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
"Color Schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"File Browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Tarbar based on ctags
Plugin 'majutsushi/tagbar'
"Super Searching
Plugin 'kien/ctrlp.vim'
"Git Integration
Plugin 'tpope/vim-fugitive'
"Powerline is a status bar that displays things like the current virtualenv,
"git branch, files being edited, and much more
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"authorinfo http://www.vim.org/scripts/script.php?script_id=2902
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"""End of VundleVim's configure"""

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

"Enable folding with space
nnoremap <space> za

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
