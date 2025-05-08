sudo apt install i3-wm i3lock fonts-firacode pavucontrol kitty zsh rofi chromium flameshot zathura pcmanfm feh

# Install neovim
mkdir  ~/gitthings/
cd ~/gitthings/
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Install Rust and Evremap (Optional)
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# git clone https://github.com/wez/evremap.git
# cd evremap
# sudo apt install libevdev-dev pkg-config
# cargo build --release
