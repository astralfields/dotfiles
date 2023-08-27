# Ocean v2

An improvement upon a sad little setup whose only redeeming feature was glowy window borders, which were relatively unknown in tiling WMs at the time I created it.

Uses [Nord](https://github.com/arcticicestudio/nord) colorscheme.

**This rice is still considered WIP**

![temp-screenshot](https://imgur.com/eYRFB6M.png)

(WIP screenshot)

## Included configs

- i3
- polybar
- alacritty
- picom
- dunst
- vim
- zsh (with grml config)
- i3lock script

## Fonts

- Terminus - Bar font (termsyn(u) or scientifica look nice too)
- [Siji](https://github.com/stark/siji) - Symbol font used in polybar
- Sauce Code Pro Nerd Font Mono - Terminal font with full unicode support


## Installation

- install command for Arch Linux (mostly for myself so I can setup new installs easily):  
    `yay -S i3-wm polybar polybar-spotify-module alacritty picom dunst i3lock imagemagick vim terminus-font zsh zsh-grml-config playerctl feh`
- the .pcf version of Siji doesn't work with modern versions of fontconfig. Download the .bdf version to `~/.fonts/siji.bdf`, then run `fc-cache -f -v`
- copy/symlink configs (or parts thereof)\*
- edit polybar and i3 configs to setup screens and audio. i3 config is annotated

Vim setup:

    # install vim-plug, then run vim to install plugins and exit
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +qall

## TODO

- [ ] rice zathura

## Disclaimer

Use at your own risk. I'm not responsible if you broke something because you just used everything
as-is, without modifying files to fit your system.

You may use any of the config files I created (not themes, not image files) as you see fit.

Wallpaper images may or may not be copyrighted, they're only for private usage.

## Acknowledgments

Github usernames:

- Airblader - i3 developer, and I stole some parts of his configs
- adi1090x - master of rice whom I stole some configs from. Has an incredible i3 rice, check it out!
- emkay443 - a friend whom I keep pestering for help when I break things
- lokesh-krishna - for the Nord theme for rofi

## Trivia

I currently use this setup by keeping this repo in a folder in my $HOME, and symlinking
all files from their actual locations. This way I can more easily keep things up-to-date
on both my desktop PC and laptop, since I just need to add/commit/push changed files,
and pull on the other device. Then I just need to change comments around since a few
things differ between my laptop and desktop setups.

(A more elegant way of doing this would be making
my entire home folder a git repo and taking care of include/exclude files... but I'm not a programmer,
I literally only use git to sync this rice, and in the spirit of "don't fix what's not broken"
I have no intention of changing it.)

Constructive criticism welcome.
