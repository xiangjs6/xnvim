# xnvim
安装neovim

sudo pacman -S neovim

创建nvim的配置目录

mkdir ~/.config/nvim

安装vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

安装coc需要的依赖

sudo pacman -S icu

sudo pacman -S nodejs yarn

安装ack

sudo pacman -S ack

安装neovim系统剪切板依赖

sudo pacman -S xsel

安装pip

方法1：

sudo pacman -S python-pip

方法2：

wget https://bootstrap.pypa.io/get-pip.py

sudo python get-pip.py

rm get-pip.py

安装clang

sudo pacman -S clang llvm-libs

安装python-nvim

pip install pynvim

安装python语言服务

pip install python-language-server

安装字体

sudo pacman -S nerd-fonts-dejavu-sans-mono

安装coc插件

CocInstall coc-clangd

CocInstall coc-python

CocInstall coc-pairs

CocInstall coc-neosnippet

CocInstall coc-rime #中文输入法

CocInstall coc-project #项目管理

CocInstall coc-marketplace #搜索访问coc扩展

输入`:CocList marketplace`并搜索语言服务器，例如：

* 输入python要查找的内容coc-jedi，
* 输入php查找内容coc-phpls，等等。

安装neovim remote

pip3 install neovim-remote

usage
NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim

nvr file1 file2
nvr -l file3

