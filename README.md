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

安装neovim系统剪切板依赖

sudo pacman -S xsel

安装pip

wget https://bootstrap.pypa.io/get-pip.py

sudo python get-pip.py

rm get-pip.py

安装clang

sudo pacman -S clang llvm-libs

安装python-nvim

pip install pynvim

安装python语言服务

pip install python-language-server

安装coc插件

CocInstall coc-clangd

CocInstall coc-python

CocInstall coc-pairs

CocInstall coc-neosnippet
