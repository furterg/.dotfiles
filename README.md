# .dotfiles

This is the uptenth attempt to track my dotfiles :-)

# Setting the environment

From the technical information gathered here (https://medium.com/toutsbrasil/how-to-manage-your-dotfiles-with-git-f7aeed8adf8b)

## Setup the environment on a new computer

### Clone your git repo

`git clone --bare https://github.com/furterg/.dotfiles.git $HOME/.dotfiles`

### define the alias in the current shell scope

`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

### checkout the actual content from the git repository to your `$HOME`

`dotfiles checkout`
