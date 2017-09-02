#rm -rf ~/.vim/bundle
#git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -f ~/.vimrc ~/.vimrc_bkup
cp -f .vimrc ~/.vimrc

# This is alternative to "Launch vim and run :PluginInstall"
vim +PluginInstall +qall

echo "Some extra steps:"
echo "If it's your first time run vimproc, you need compile manually by running: "
echo "cd ~/.vim/bundle/vimproc.vim && make'
