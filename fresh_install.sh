# Install all required packages from apt
sudo apt install git pavucontrol zoxide fzf pulseaudio libevdev pkg-config powertop tlp fonts-knda node nodejs npm zip unzip gunzip git-delta delta network-manager ssh libreoffice i3-wm vim doxygen dot graphviz tree bat lshw nmap gimp texlive texlive-base texlive-bibtex-extra gdb clang gcc flameshot kitty strace pcmanfm curl file wget make cmake ninja-build build-essential rofi texlive-fonts-recommended texlive-latex-recommended texlive-lang-english w3m aria2 unrar-free fonts-firacode fd-find i3lock nasm xclip chromium ffmpeg pdftk vainfo zathura zsh

source ~/.bashrc

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source ~/.bashrc

# Create main directories
cd ~
mkdir gitthings misc notes programming projects

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env
source ~/.bashrc

# Setup gitthings
cd gitthings
# Install evremap
git clone https://github.com/wez/evremap.git
cd evremap
sudo apt install libevdev-dev pkg-config
cargo build --release

# Install neovim
cd ..
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
# Install gf
cd ..
git clone https://github.com/nakst/gf.git
cd gf
./build.sh

# Setup all configs
cd ..
rm -fr ~/.config
git clone https://github.com/SubramanyaJ/dotfiles
cd dotfiles
cp -r ./config ~/.config
