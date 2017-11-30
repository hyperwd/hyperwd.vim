# Hyperwd's Vim configs and a key installation script                                                                

### Installation

[Download plug.vim](https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim) and put it in the "~/.vim/autoload" directory.

###### Unix

```sh

$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim

$ wget --no-check-certificate https://raw.githubusercontent.com/hyperwd/hyperwd.vim/master/int.vim \
    -O ~/int.vim

$ mv ~/int.vim ~/.vimrc

$ apt-get install ctags

$ apt-get install cmake

$ apt-get install python-dev python3-dev

$ pip install pylint(pylint3)

$ pip install pyflakes(pyflakes3)  

$ pip install pycodestyle(pycodetyle3)(recommend)

$ vim +PlugInstall +qa


```

### Getting Help

- Create an [issue](https://github.com/hyperwd/hyperwd.vim/issues/new).

### Usage

1.  \<F4\>, when you type \<F4\>, this will add in the head of your source 
file, and when you type \<F4\> again, It will update automatically.
 ###==========================================================================
 FileName: test.py                                                          
 Desc:                                                               
 Author: Dong Wei Chao                                                 
 Email: 435904632@qq.com                                              
 HomePage: https://github.com/hyperwd                                    
 Version: 0.0.1                                                         
 LastChange: 2016-09-22 15:32:04                                           
 History:                                                               
 ###==========================================================================
2. How to config the authorinfo?   
    vim ~/.vim/plugged/hyperwd.vim/plugin/hypwerwd.vim
3.  \<F5\>, Change the theme (solarized or Zenburn)   
4.  z[a|c|o|...], The most basic commands are zc to close a fold and zo to 
open one. See :help fold-commands for full documentation.
5.  Ctrl+n,  Open NERDTree with Ctrl+n
6.  \<F8\>,    If you type the F8 key will toggle the Tagbar window.
7.  Ctrl+p,   Check :help ctrlp-commands for other commands.
8.  \<F1\>,   :set fileencoding
9.  \<F2\>,   :set paste 
10.  \<F3\>,   :set nopaste   
11.  (),{},[],<> Auto-Complete      
12.  =,+,-,*,/,:,,,<,> Automatic-Space         


### 默认补全选择Youcomplete,安装插件较大，安装前建议为git配代理


### Plugins list

   'tmhedberg/SimpylFold'                                  
   'vim-scripts/indentpython.vim'                          
   'vim-syntastic/syntastic'                                          
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
