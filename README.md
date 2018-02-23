# timofurrer/dotfiles

**(1) Install required dependencies:**

```
sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libpulse-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libxcb-cursor-dev
```


**(2) Build and install polybar:**

```
git clone --recursive https://github.com/jaagr/polybar
cd polybar
./build.sh
```

**(3) Link config files:**

```
ln -s ~/dotfiles/i3 ~/.i3
```
