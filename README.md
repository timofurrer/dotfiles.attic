# timofurrer/dotfiles

**(1) Install required dependencies:**

```
sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libpulse-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libxcb-cursor-dev

# i3-gaps
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

# fonts
sudo apt install fonts-hack-ttf fonts-font-awesome

# apps
sudo apt install rofi ranger
```


**(2) Build and install polybar:**

```
git clone --recursive https://github.com/jaagr/polybar polybar.bin
cd polybar.bin
./build.sh
```

**(3) Install i3-gaps:**

```
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

**(4) Link config files:**

```
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/polybar ~/.config/polybar
ln -s ~/dotfiles/backgrounds ~/.config/backgrounds
ln -s ~/dotfiles/rofi ~/.config/rofi
```
