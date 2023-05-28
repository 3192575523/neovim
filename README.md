# neovim
It just the basic config of neovim
![image](screenshot.png)
## first download the fd and the ripgrep
```bash
sudo pacman -S fd
sudo pacman -S ripgrep
```

## clone the respiratory to the local which in `~/.config/nvim` and change the location so that the nvim can be change
```bash
git clone https://github.com/3192575523/neovim.git
```

## download the packer package management
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```

## download the rust-analyzer
```bash
rustup component add rust-analyzer
```
