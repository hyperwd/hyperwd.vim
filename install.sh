#!/bin/bash
#=============================================================================
#     FileName: install.sh
#         Desc: A key installation script for your Vim configs
#       Author: Dong Wei Chao
#        Email: dongwei_chao@163.com
#     HomePage: https://github.com/hyperwd
#      Version: 0.0.1
#   LastChange: 2016-09-21 11:14:09
#      History:
#=============================================================================

#in_dir="$(cd "$(dirname "$0")" && pwd)"
retval=0
in_file=(authorinfo.vim DrawIt.vba install.sh vimrc)

#Do nothing if git is no available
if ! which git > /dev/null 2>&1;then
        echo "Nothing to do: Please install git to use hyperwd.vim" >&2
        exit 1
fi

#Do nothing if somefile is lost
for ((i=0;i<${#in_file[*]};i++));do
    [ ! -f ./${in_file[$i]} ] && echo "Nothing to do:Lost the file of ${in_file[$i]}" >&2 && exit 2
done

#Install VundleVim and Install the .vimrc
if [ ! -d ~/.vim/bundle ];then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim > /dev/null 2>&1
    retval=$?
    if [ $retval -ne 0 ];then
        [ -f ~/.vimrc ] && { 
        /usr/bin/mv ~/.vimrc ~/.vimrc.hyper.bak > /dev/null 2>&1
        /usr/bin/cp ./vimrc ~/.vimrc > /dev/null 2>&1
        } || /usr/bin/cp ./vimrc ~/.vimrc > /dev/null 2>&1
    else
        echo "Nothing to do:Can't install VundleVim"
    fi
else
    /usr/bin/cp ./vimrc ~/.vimrc > /dev/null 2>&1
fi

#Install the plugins use VundleVim
vim +PluginInstall +qall
retval=$?
[ $retval -ne 0 ] && cd ~/.vim/bundle/YouCompleteMe/ && ./install.py > /dev/null 2>&1
/usr/bin/cp ./authorinfo.vim ~/.vim/bundle/nerdcommenter/plugin/
