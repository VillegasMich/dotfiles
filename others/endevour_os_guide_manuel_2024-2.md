# EndevourOS Arch Setup Guide

## Steps to follow
1. Load the **i3 config file** and **i3bloks.conf** from my [repo](https://github.com/VillegasMich/dotfiles).
1. Check every block in **i3blocks-bar** and install necessary dependencies.
1. Install programs like ***xcompmgr (try picom for opacity and raounded corners and gaps)** for windows opacity*, ***brave*** and others.
1. Install and setup **snapd** and *spap-store* GUI if wanted.
1. Setup **wezTerm** following [this](https://wezfurlong.org/wezterm/install/linux.html#__tabbed_1_7) steps.
1. Install oh-my-zsh and set up starship.
1. Install and configure **atrovim** v4 following the [docs](https://docs.astronvim.com/).
1. Configure keyboard layout.
    1. `git clone https://aur.archlinux.org/xkblayout-state-git.git.`
    1. `$ cd xkblayout-state-git`
    1. `makepkg` 
    1. Exctract the reult.
    1. Move the app to usr/bin with sudo permission.
    1. Create 2 bash files with the folowing code `$(setxkbmap us) \n echo $(/usr/bin/xkblayout-state print '%s')` whith us and es. *(check if possible just one and change to other layout)*
    1. Set the execute permitions `chmod +x <filenames>`
    1. Test.
1. Check the `cd .local/share/rofi/themes/` for rofi themes and change in `.config/rofi/config.rasi`
1. Download most used apps like:
    - sdkman (.zshrc file already with SDK line at the end)
    - Discord
    - Spotify -> https://wiki.archlinux.org/title/spotify
    - WhatsApp -> Try web app
    - Teams -> Try web app
    - GitHub -> web app
    - OBS -> https://wiki.archlinux.org/title/Open_Broadcaster_Software -> pacman
    - Caffeine -> https://aur.archlinux.org/packages/caffeine-ng -> yay
