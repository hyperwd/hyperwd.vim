# Hyperwd's Vim configs and a key installation script                                                                

### Installation

[Download plug.vim](https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim)
and put it in the "~/.vim/autoload" directory.

###### Unix

```sh
$ "YouCompleteMe自动补全需要vim版本较高，可编译安装http://www.jianshu.com/p/aac78ff576c5"

$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim

$ wget https://raw.githubusercontent.com/hyperwd/hyperwd.vim/master/int.vim -O ~/int.vim

$ mv ~/int.vim ~/.vimrc

$ vim +PlugInstall +qa

$ "安装YouCompleteMe库"

$ cd ~/.vim/plugged/YouCompleteMe && ./install.py

```

### Getting Help

- Create an [issue](https://github.com/hyperwd/hyperwd.vim/issues/new).

### Usage

1.  \<F4\>,    when you type \<F4\>,this will add in the head of your source file,and
   when you type \<F4\> again,It will update automatically.
 #=============================================================================
 #     FileName: test.py                                                          
 #         Desc:                                                               
 #       Author: Dong Wei Chao                                                 
 #        Email: 435904632@qq.com                                              
 #     HomePage: https://github.com/hyperwd                                    
 #      Version: 0.0.1                                                         
 #   LastChange: 2016-09-22 15:32:04                                           
 #      History:                                                               
 #=============================================================================
 How to config the authorinfo?<br>
    vim ~/.vim/plugged/hyperwd.vim/plugin/hypwerwd.vim
1.  \<F5\>,     Change the theme (solarized or Zenburn)
1.  z[a|c|o|...],    The most basic commands are zc to close a fold and zo to open one. See
   :help fold-commands for full documentation.
1.  Ctrl+n,  Open NERDTree with Ctrl+n
1.  \<F8\>,    If you type the F8 key will toggle the Tagbar window.
1.  Ctrl+p,   Check :help ctrlp-commands for other commands.


### Plugins list

   'tmhedberg/SimpylFold'                                  
   'vim-scripts/indentpython.vim'                          
   'scrooloose/syntastic'                                  
   'jnurmine/Zenburn'                                      
   'altercation/vim-colors-solarized'                      
   'scrooloose/nerdtree'                                   
   'jistr/vim-nerdtree-tabs'                               
   'majutsushi/tagbar'
   'Valloric/YouCompleteMe'
   'kien/ctrlp.vim'                                        
   'tpope/vim-fugitive'                                    
   'Lokaltog/powerline', \{'rtp': 'powerline/bindings/vim/'\}
   'scrooloose/nerdcommenter'                              
   'hyperwd/hyperwd.vim'                                   

### License

MIT

