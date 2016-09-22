# Hyperwd's Vim configs and a key installation script                                                                
<img
src="https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif" height="450">

### Installation

[Download plug.vim](https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim)
and put it in the "~/.vim/autoload" directory.

###### Unix

```sh
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/hyperwd/vim-plug/master/plug.vim

$ git clone https://github.com/hyperwd/hyperwd.vim.git

$ cp hyperwd.vim/int.vim ~/.vimrc

$ vim +PlugInstall +qa

$ cp hyperwd.vim/authorinfo.vim ~/.vim/
```

### Getting Help

- See the [requirements] page for debugging information & tested configurations.
- See the [FAQ] for common problems and questions.
- Create an [issue](https://github.com/junegunn/vim-plug/issues/new).

[FAQ]: https://github.com/junegunn/vim-plug/wiki/faq
[requirements]: https://github.com/junegunn/vim-plug/wiki/requirements

### Usage

### `Plugins` list

### License

MIT

