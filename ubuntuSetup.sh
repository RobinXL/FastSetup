sudo grep -qxF '%sudo   ALL=(ALL:ALL) NOPASSWD:ALL' /etc/sudoers || echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
sudo apt update -y
sudo apt upgrade -y
python3 -V
sudo apt install -y python3-pip
sudo apt install -y git vim curl wget
sudo apt install -y terminator zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install -y fonts-powerline xclip
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
echo "alias python=python3" >> ~/.zshrc
echo "alias pip=pip3" >> ~/.zshrc
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code
source ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)
