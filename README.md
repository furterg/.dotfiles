# .dotfiles

This is the umpteenth attempt to track my dotfiles :-)

# Setting the environment

From the technical information gathered here (https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)

## Setup the environment on a new computer

### Clone your git repo

`git clone --bare https://github.com/furterg/.dotfiles.git $HOME/.dotfiles`

### define the alias in the current shell scope

`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

### checkout the actual content from the git repository to your `$HOME`

`dotfiles checkout`

### connecting the new computer to the github account

You need to generate a token for that.

See details here: https://gmacario.github.io/2017/08/08/cmdline-git-with-github-2fa.html

# Problem solving

## problem with xdg-open, kfmclient, xdg-settings and kwriteconfig

It appears that some KDE command have changed recently. To make everything work, it looks like we need make links with old command names:

```
sudo ln /usr/bin/kioclient5 /usr/bin/kfmclient
sudo ln /usr/bin/kwriteconfig5 /usr/bin/kwriteconfig
```
To set default client:
```
xdg-settings set default-web-browser chromium.desktop
```

Maybe usr a fil to define the default apps. Could be located in `~/.config/mimeapps.list` and/or (not sure) `~/.local/share/applications/default.list`.

So I stored it in the first location and made a link:
```
ln -s ~/.config/mimeapps.list ~/.local/share/applications/default.list
```
## icons not showing properly on i3status bar

The icons rely on the package `ttf-icomoon-feather`

# tmux

Don't forget to install *xclip* to allow copying to clipboard:
```
sudo apt install xclip
```
## tmux plugin manager ([tpm](https://github.com/tmux-plugins/tpm))

### Install tpm:

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Reload TMUX environment so TPM is sourced:
# type this in terminal if tmux is already running
tmux source ~/.tmux.conf
```
### Installing plugins

* Add new plugin to `~/.tmux.conf with set -g @plugin` '...'
* Press `prefix + I` (capital i, as in Install) to fetch the plugin.

### Key bindings

`prefix + I`

* Installs new plugins from GitHub or any other git repository
* Refreshes TMUX environment

`prefix + U`

* updates plugin(s)

`prefix + alt + u`

* remove/uninstall plugins not on the plugin list

## [tmux powerline](https://github.com/erikw/tmux-powerline)

Install the fond 0XProto from [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-1-release-archive-download) in `~/.local/share/fonts` using the following command line:  
```
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/0xProto.zip | unzip
```

### Change the theme:
```
export EDITOR=vim
mkdir -p ~/.config/tmux-powerline/themes
cp ~/.config/tmux/plugins/tmux-powerline/themes/default.sh ~/.config/tmux-powerline/themes/my-theme.sh
$EDITOR ~/.config/tmux-powerline/themes/my-theme.sh

