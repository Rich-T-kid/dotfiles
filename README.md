# dotfiles

My personal configs for bash, vim, and nvim.

## Setup on a new machine

```bash
git clone git@github.com:richardbaah/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```


## What it does

`install.sh` symlinks files from this repo into your home directory:

| Repo file       | Symlinked to        |
|-----------------|---------------------|
| `bashrc`        | `~/.bashrc`         |
| `bash_profile`  | `~/.bash_profile`   |
| `vimrc`         | `~/.vimrc`          |
| `nvim/`         | `~/.config/nvim`    |

If a file already exists at the destination, it's backed up with a `.backup` suffix before linking.

## Adding a new dotfile later

```bash
mv ~/.somerc ~/dotfiles/somerc
ln -s ~/dotfiles/somerc ~/.somerc
cd ~/dotfiles && git add somerc && git commit -m "Add somerc" && git push
```
