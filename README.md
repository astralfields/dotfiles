# Ocean v2

An improvement upon a sad little setup whose only redeeming feature was glowy window borders, which were uncommon in tiling WMs at the time I created it.

Uses [Nord](https://github.com/arcticicestudio/nord) colorscheme.

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

There are some remaining config files for a few other things as well, such as termite which I used before alacritty.

## Fonts

- Terminus - Bar font. Alternatives: termsyn, termsynu, scientifica
- [Siji](https://github.com/stark/siji) - Symbol font used in polybar
- Sauce Code Pro Nerd Font Mono - Terminal font with full unicode support


## Installation

- all-in-one install command for Arch and derivates:  
    `yay -S arandr i3-wm polybar polybar-spotify-module alacritty picom dunst i3lock imagemagick vim terminus-font zsh grml-zsh-config playerctl feh`
- the .pcf version of Siji doesn't work with modern versions of fontconfig. Download the .bdf version to `~/.fonts/siji.bdf`, then run `fc-cache -f -v`
- copy/symlink configs, edit as required
- definitely edit polybar and i3 configs, you need to setup display and audio stuff. These configs are annotated

vim setup – install vim-plug, then run vim to install plugins and exit:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    vim +PlugInstall +qall

## TODO

- [ ] rework / modernize setup. Never really got around to completing this
- [ ] rice zathura

## Disclaimer

Use at your own risk. This is a personal setup for my personal computer. I'm not responsible if you broke something because you just used everything
as-is, without modifying files to fit your system.

You may use any of the config files I created as you see fit.

Included wallpaper images may or may not be copyrighted, they're only for private usage.

## Acknowledgments

- Airblader - i3 developer, and I stole some parts of his configs
- adi1090x - master of rice whom I stole some configs from
- emkay443 - a friend whom I keep pestering for help when I break things
- lokesh-krishna - for the Nord theme for rofi
