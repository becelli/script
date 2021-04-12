sudo apt update && sudo apt upgrade -y

# ----- Fix windows and linux date and time
timedatectl set-local-rtc 1 --adjust-system-clock

# -----  Necessary
sudo apt install git apt-transport-https curl -y
git config --global user.email "gustavobecelli@gmail.com"
git config --global user.name "Becelli"
# ----- Install browser and apps

# Papirus icon Theme
sudo add-apt-repository ppa:papirus/papirus
sudo apt-get update
# Snapd on Linux Mint
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt update
# Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install snapd brave-browser zsh build-essential papirus-icon-theme geary obs-studio darktable -y telegram-desktop pavucontrol -y

# Install Snap packages
sudo snap install code --classic
sudo snap install figma-linux
# sudo snap install veloren --edge



#Theme
git clone git@github.com:daniruiz/flat-remix-gtk.git
mv flat-remix-gtk/Flat-Remix-GTK-Blue-Dark ~/.local/share/themes
# Icon
git clone git@github.com:daniruiz/flat-remix.git
mv flat-remix/Flat-Remix-Blue-Dark ~/.local/share/icons

#Remove
sudo rm -rf flat-remix
sudo rm -rf flat-remix-gtk

# ----- Install asdf
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
echo ". $HOME/.asdf/asdf.sh" >> .zshrc

wget https://github.com/becelli.png
mv becelli.png ~/Pictures/profile.png
