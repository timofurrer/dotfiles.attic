# timofurrer/dotfiles

**Install required dependencies:**

```bash
sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libpulse-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libxcb-cursor-dev

# i3-gaps
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

# fonts
sudo apt install fonts-hack-ttf fonts-font-awesome

# apps
sudo apt install rofi ranger
```


**Build and install polybar:**

```bash
git clone --recursive https://github.com/jaagr/polybar polybar.bin
cd polybar.bin
./build.sh
```

**Install i3-gaps:**

```bash
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```

**Install zsh:**

```bash
sudo apt install zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# spaceship theme
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

**Install fzf:**

```bash
~/.fzf/install
```


**Link config files:**

```bash
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/polybar ~/.config/polybar
ln -s ~/dotfiles/backgrounds ~/.config/backgrounds
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases
ln -s ~/.vim/vimrc ~/.vimrc
```
