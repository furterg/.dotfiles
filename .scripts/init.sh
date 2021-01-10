!# /bin/sh

# Update system
sudo pacman -Syyu

# Install and enable AUR
# sudo pacman -S git
# cd $HOME/Downloads
# git clone https://aur.archlinux.org/yay-git.git
# cd yay-git
# mkepkg -si

# tweak pacman
sudo echo "Color\nILoveCandy" >> /etc/pacman.conf

# Install useful packages
Pacman -Syu artwork-i3 aspell aspell-en auto-multiple-choice autojump awsome-terminal-fonts bpytop brave-bin cryptomator darktable deluge etcher filezilla flameshot i3-default-artwork i3-gaps i3-help i3-scripts i3-scrot i3exit i3lock i3status-majaro joplin-desktop kdenlinve krita lf lolcat manjaro-i3-settings neofetch noto-fonts pango picom powerline powerline-common powerline-fonts rawtherapee remmina rofi scrot speedtest-cli texinfo texlive-bin texlive-core texlive-fontsextra texlive-latexextra texlive-science tmux tmux-resurrect ttf-dejavu ttf-font-icons ttf-hack ttf-linux-libertine ttf-ms-fonts urxvt-perl vim-runtime vim-spell-fr vim-youcompleteme-git virtualbox virtualbox-ext-oracle virtualbox-ext-vnc virtualbox-guest-iso vlc vundle youtube-dl zoom zsh-autosuggestions zsh-completions zsh-history-string-search zsh-syntax-highlighting zsh-theme-powerlevel9k-git xautolock ffmpegthumbnailer feh


# Activate CUPS
sudo systemctl enable --now cups.service
sudo systemctl enable --now cups.socket
sudo systemctl enable --now cups.path
