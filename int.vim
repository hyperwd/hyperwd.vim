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
call plug#begin()

" Add all your plugins here 
" Keep Plug commands between Plug#begin/end.

"super Code Folding
Plug 'tmhedberg/SimpylFold'
"Auto-Indentation
Plug 'vim-scripts/indentpython.vim'
"Syntax Checking/Highlighting
Plug 'scrooloose/syntastic'
"Color Schemes
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
"File Browsing
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
"Tarbar based on ctags
Plug 'majutsushi/tagbar'
"Super Searching
Plug 'kien/ctrlp.vim'
"Git Integration
Plug 'tpope/vim-fugitive'
"Powerline is a status bar that displays things like the current virtualenv,
"git branch, files being edited, and much more
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"authorinfo http://www.vim.org/scripts/script.php?script_id=2902
Plug 'scrooloose/nerdcommenter'
"the keyboard configs of plugins
Plug 'hyperwd/hyperwd.vim'

" All of your Plugins must be added before the following line
call plug#end()
