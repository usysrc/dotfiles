# dotfiles

## Install stow on Arch

```sudo pacman -S stow```

## Clone into `~/`
You should clone it to your HOME folder because it is easier to use with.

```bash
git clone https://github.com/usysrc/dotfiles
```


## Install all dotfiles

```stow */```

## Add changes to dotfiles
Since stow changes are 

Make your changes. For example to the `.zshrc`.

Then add them by committing.
```bash
cd ~/dotfiles/
git add zsh/.zshrc
git commit -m "added changes to zshrc"
```
