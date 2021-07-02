# Ocean v2

An improvement upon a sad little setup whose only redeeming feature was glowy window borders, which were relatively unknown in tiling WMs at the time I created it.

**This rice is still considered WIP**

![temp-screenshot](https://imgur.com/eYRFB6M.png)

(WIP screenshot)

# Requirements and suggestions

...or just a list of included configs

| Tool or resource | What is this? | Notes | Alternatives (if applicable) |
| --- | --- | --- | --- |
| [i3-gaps](https://github.com/Airblader/i3) | Fork of i3wm with useless gaps and other things | | |
| [polybar](https://github.com/jaagr/polybar) | Creates bars to display system information, highly configurable | Plugins used: polybar-spotify-module | lemonbar maybe? |
| [Nord](https://github.com/arcticicestudio/nord) colorscheme | Popular colorscheme for terminals and CLI software | | base16-ocean can fit too |
| alacritty | Modern terminal emulator written in rust | The Nord colorscheme requires a 256 color capable terminal emulator | Configs for **termite** and **xfce4-terminal** (yes – it's surprisingly good for tiling WMs) are provided |
| picom | Compositor | The glowy border around active windows is a colored window shadow | compton |
| dunst | Makes simple notification popups | | |
| i3lock | A very simple screen locker | | |
| imagemagick | Provides CLI image manipulation utilities | Required to set a dynamic background for i3lock | - |
| vim | some weird text editor | Configuration requires [Vundle.vim](https://github.com/VundleVim/Vundle.vim) | emacs :\^) |

I use the i3-gaps "next" branch but the stable branch should work too. Not gonna test it, you're on your own.

Other random things:

- xfce4-power-manager: I need this for my laptop because it's the only thing that can handle my chinaware laptop's weird screen backlight properly

## Installation

- install all necessary applications
    - Install command for Arch Linux (substitute with your favorite AUR helper):  
    `yay -S i3-gaps polybar polybar-spotify-module alacritty picom dunst i3lock imagemagick vim`
- for vim: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

## Fonts

| Font name | Usage | Alternative(s)
| --- | --- | --- |
| Terminus | Main font | termsyn(u), scientifica |
| Siji | Symbol font used in polybar | *(none)* |

Note: If the .pcf version of Siji doesn't work, you may have to install the .bdf version. I had to do this. Download it from the repo, put it in `$HOME/.fonts/siji.bdf`, then run 

# TODO

In order of significance:

- [x] improve polybar config
- [ ] improve dunst config
- [ ] setup mpd/ncmpcpp
- [ ] rice zathura
- [ ] maybe make a midnightcommander theme?

# Disclaimer

Use at your own risk. I'm not responsible if you broke something because you just used everything
as-is, without modifying files to fit your system.

I'm working on making the config files cleaner and comment them nicely. Until then, things may be a little chaotic.

Please pretend that the MIT license applies to all files in this repository. I don't really care what you do
with them - share, copy, modify, fork, whatever. Just don't post them elsewhere and say you made them. I use
material from other people too, with varying licenses, so I don't want to actually apply a license.

# Acknowledgments

Github usernames unless noted otherwise.

- Airblader - author of i3-gaps, and I stole some parts of his configs
- adi1090x - master of rice whom I stole some configs from. Has an incredible i3 rice, check it out!
- emkay443 - a friend who helped me with bash
- lokesh-krishna - for the Nord theme for rofi
- reddit user /u/\_\_\_\_\_frost\_\_\_ (user deleted) - even though they never actually posted their dotfiles, they were
great inspiration.

# Trivia

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
