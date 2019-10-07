# Ocean v2

An improvement upon a sad little setup whose only redeeming feature was glowy window borders, which were relatively unknown in tiling WMs at the time I created it.

![temp-screenshot](https://i.imgur.com/zhfjpmP.png)

(WIP screenshot)

# Requirements and suggestions

| Tool or resource | Description | Why do I use it? | Alternatives (if applicable) |
| --- | --- | --- | --- |
| [i3-gaps](https://github.com/Airblader/i3) | Fork of i3wm with useless gaps and other things | Because it's my favorite wm | Any wm you want to make your own configs for because I'm not helping with that. |
| [polybar](https://github.com/jaagr/polybar) | Creates bars to display system information, highly configurable | polybar is amazing and basically the centerpiece of this setup | *(none)* |
| [Nord](https://github.com/arcticicestudio/nord) colorscheme | Popular colorscheme for terminals and CLI software | Looks nice and I haven't found anything that would fit this rice better | I cannot recommend anything but Nord, unless you want to deal with recoloring the polybar setup. If you want to do that... good luck and have fun. |
| termite | Simple terminal emulator designed for use with tiling wms | It's simple and does everything I need | The Nord colorscheme requires any terminal emulator with 256 color support. Configs for **rxvt-unicode** (urxvt) are provided. |
| compton | Compositor that enables blur effects, transparency, simple animations and window shadows | The glowy border around active windows is a colored window shadow, which can only be created by a compositor. | ? |
| xfce4-power-manager | Manages battery, power, and screen backlighting | I need it for my laptop because it's the only way I can easily use the arcane screen backlight technology this cheap chinaware monstrosity has | ? |
| dunst | Makes simple notification popups | Again, it's simple and does everything I need | ? |
| i3lock | A very simple screen locker | ditto | Any other screen locker |
| imagemagick | Provides CLI image manipulation utilities | Required to set a dynamic background for i3lock | *(none)* |
| vim | A fast and efficient text editor based on modes | #vimmasterrace | emacs :\^) |
| Arch Linux | A simple, lightweight GNU/Linux distribution | I use Arch btw | Hannah Montana Linux |

I use the i3-gaps "next" branch but the stable branch should work too. Not gonna test it, you're on your own.

## Fonts

| Font name | Usage | Alternative(s)
| --- | --- | --- |
| termsyn | Main font | scientifica (especially on smaller displays - I use it on my laptop)
| Siji | Symbol font used in polybar | *(none)* |
| FuraCode Nerd Font Mono | Used for additional symbols, especially powerline glyphs, in polybar | Any other monospace font from the Nerd Fonts project |
| Adobe Source Code Pro | optional; my personal choice of non-pixel monospace font for use in terminals on high-resolution displays | whatever you like

# TODO

In order of significance:

- [x] find a better colorscheme because base16-ocean just doesn't fit that well (now using Nord!)
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

Github usernames.

- Airblader - author of i3-gaps, and I stole some parts of his configs
- adi1090x - master of rice whom I stole some configs from. Has an incredible i3 rice, check it out!
- emkay443 - a friend who helped me with bash
- lokesh-krishna - for the Nord theme for rofi
- reddit user /u/\_\_\_\_\_frost\_\_\_ - even though they never actually post their dotfiles, they were
great inspiration. I copied the polybar configuration as well as I could.

# Trivia

- I currently use this setup by keeping this repo in a folder in my $HOME, and symlinking
all files from their actual locations. This way I can more easily keep things up-to-date
on both my desktop PC and laptop, since I just need to add/commit/push changed files,
and pull on the other device. Then I just need to change comments around since a few
things differ between my laptop and desktop setups. (A more elegant way of doing this would be making
my entire home folder a git repo and taking care of include/exclude files... but I'm not a programmer,
I literally only use git to sync this rice, and in the spirit of "don't fix what's not broken"
I have no intention of changing it.)
- I am also  using xfce4-power-manager. That's because my chinaware
abomination of a laptop uses some arcane technology which makes the screen brightness buttons very difficult
to work with, but Xfce's power manager can do it somehow. I also use it on my desktop for energy saving.

*Constructive* criticism concerning my rice is very welcome.

Criticism, constructive as it may be, concerning my methods, writing style, formatting etc. will more than
likely fall on deaf ears. I have no interest in "doing things the right way".
I just want things to work, and as I am not a programmer, you will not
have to deal with my atrocities anywhere but in this exact git repo. So, deal with it. :)
