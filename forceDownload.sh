#rm -rf ~/.vim/bundle
#git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -f ~/.vimrc ~/.vimrc_bkup
cp -f .vimrc ~/.vimrc

# This is alternative to "Launch vim and run :PluginInstall"
vim +PluginInstall; 

echo "Some extra steps to setup the configurations:"
echo "Plugin vimproc need extra step: compile";
echo "If it's your first time run vimproc, you need compile manually by running: ";
echo "cd ~/.vim/bundle/vimproc.vim && make';

echo "Plugin AutoFormatter need extra step: add exteral formatter";
echo "Ignore if you already installed:";
echo "Java/C/C++ formatter: astyle, Run below command";
echo "brew install astyle"
echo "python formatter: autopep8, run below:"
echo "sudo pip install autopep8"
echo "js/html/css/json formatter: js-beauty, run below:"
echo "npm install -g js-beautify"
echo "xml and html and xthml formatter: tidy, run below:"
echo "brew install tidy-html5"
echo "golang formatter: gofmt, it usually come with go installation:"
echo "ruby formatter: ruby-beautify, run below:";
echo "gem install ruby-beautify";
echo "markdown formatter: remark, run below";
echo "npm install -g remark-cli";
echo "haskel formatter: stylish-haskell, run below:";
echo "cabal install stylish-haskell";
echo "sudo ln -s $HOME/Library/Haskell/bin/stylish-haskell /usr/local/bin/stylish-haskell"
