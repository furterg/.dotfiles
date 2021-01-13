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



