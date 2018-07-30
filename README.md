# vim—python3,virtualenv等IDE环境配置                                                         
需要安装python3,virtualenv及vim，并且vim启用python3支持
### 第一步，安装python3,vim

###### Centos
```sh
$ wget https://raw.githubusercontent.com/hyperwd/comtools/master/rpms/python3/python-3.6.5-530.el7.x86_64.rpm \
    -O ~/python-3.6.5-530.el7.x86_64.rpm

$ rpm -ivh ~/python-3.6.5-530.el7.x86_64.rpm

$ wget https://raw.githubusercontent.com/hyperwd/comtools/master/rpms/vim/vim-8.0-1768.el7.x86_64.rpm \
    -O ~/vim-8.0-1768.el7.x86_64.rpm

$ rpm -ivh ~/vim-8.0-1768.el7.x86_64.rpm

$ echo 'export PATH="$PATH:/usr/local/python365/bin:/usr/local/vim/bin"' >> ~/.bashrc

$ source ~/.bashrc

$ wget https://bootstrap.pypa.io/get-pip.py -O ~/get-pip.py

$ python3 ~/get-pip.py

$ yum install -y git

```
###### 或自行编译安装，参考编译[安装python3,vim]()

### 第二步，安装virtualenv
###### unix
```sh
$ pip3 install virtualenv
$ virtualenv -p /usr/local/python365/bin/python3 /opt/virt
$ source /opt/virt/bin/activate
```

### 第三步，安装hyperwd.vim

###### centos

```sh

$ source /opt/virt/bin/activate

$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

$ wget --no-check-certificate https://raw.githubusercontent.com/hyperwd/hyperwd.vim/master/int.vim \
    -O ~/int.vim

$ mv ~/int.vim ~/.vimrc

$ yum install ctags cmake -y

$ pip3 install pylint

$ pip3 install pyflakes

$ pip3 install pycodestyle

$ pip3 install shadowsocks(建议配置代理)

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
