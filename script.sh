mkdir -p ~/tools
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -P ~/tools/
chmod u+x ~/tools/nvim.appimage 
ln -s ~/tools/nvim.appimge ~/tools/nvim
echo "export PATH=$HOME/tools/nvim:$PATH" >> ~/.bashrc
sudo ldconfig

mkdir -p ~/.config/nvim/
cp -r init.vim ~/.config/nvim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Python3
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.7


# Remove related stuffs
rm -rf ~/env/python37-env/
virtualenv -p python3.7 ~/env/python37-env
source ~/env/python37-env/bin/activate

pip install --upgrade pip
pip install pynvim
pip install jedi
pip install yapf
pip install pylint
 
