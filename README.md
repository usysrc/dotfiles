# dotfiles

## Install stow on Arch

```bash
sudo pacman -S stow
```

## Install stow on MacOS

```bash
brew install stow
```

## Clone into `~/`
You should clone it to your HOME folder because it is easier to use with.

```bash
git clone https://github.com/usysrc/dotfiles
```

## Install all dotfiles

```bash
stow */
```

## Add changes to dotfiles 
Make your changes. For example to the `.zshrc`.

Then add them by committing.
```bash
cd ~/dotfiles/
git add zsh/.zshrc
git commit -m "added changes to zshrc"
```
