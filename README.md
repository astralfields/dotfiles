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
| [Nord](https://github.com/arcticicestudio/nord) | Popular colorscheme for terminals and CLI software | Requires 256 color terminal emulator | base16-ocean can fit too |
| alacritty | Modern terminal emulator written in rust | | termite (config provided) |
| picom | Compositor | For glowy borders | compton |
| dunst | Makes simple notification popups | | |
| i3lock | A very simple screen locker | My lock script requires imagemagick | |
| vim | some weird text editor | My configuration requires [Vundle.vim](https://github.com/VundleVim/Vundle.vim) | emacs :\^) |
| zsh | z shell | using grml-zsh-config | |


## Fonts

| Font name | Usage | Alternative(s)
| --- | --- | --- |
| Terminus | Bar font | termsyn(u), scientifica |
| [Siji](https://github.com/stark/siji) | Symbol font used in polybar | *(none)* |
| Sauce Code Pro Nerd Font Mono | Terminal font | FuraCode Nerd Font Mono? |


## Installation

- install command for Arch Linux (mostly for myself so I can setup new installs easily):  
    `yay -S i3-gaps polybar polybar-spotify-module alacritty picom dunst i3lock imagemagick vim terminus-font zsh zsh-grml-config playerctl feh`
- the .pcf version of Siji doesn't work with modern versions of fontconfig. Download the .bdf version to `~/.fonts/siji.bdf`, then run `fc-cache -f -v`
- copy configs (or parts)\*
- check polybar config to setup screens and pulseaudio sink
- check i3 config, it's annotated. You will have to make some changes, especially for screens and audio stuff
- vim setup: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`, then `vim +PluginInstall +qall`

\* or symlink. See Trivia ↓

# TODO

In order of significance:

- [x] improve polybar config
- [x] improve dunst config
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
- emkay443 - a friend with 10 times more Linux knowledge than I have whom I keep pestering for help when stuff is broken
- lokesh-krishna - for the Nord theme for rofi

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
