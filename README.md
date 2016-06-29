# Ocean v2

I am now using jaagr's way of tracking dotfiles with git, as explained in [his repo](https://github.com/jaagr/dots).

if you're looking for my old Ocean setup, you can find it [here](https://github.com/suchtie/dotfiles-legacy).

## Screenshots

**Screenshots will be posted shortly** (when I'm mostly done ricing)

# Requirements

- [i3-gaps-next](https://github.com/Airblader/i3) ("next" branch required for i3bar transparency)
- compton
- terminal emulator with 256 colors and Unicode support
- lemonbar with xft patch
- [lemonbuddy](https://github.com/jaagr/lemonbuddy)

I use urxvt with a 256 color patch as terminal emulator. If you don't want to use this then
you'll need to heavily edit my i3 config.

## Optional requirements

- [i3blocks](https://github.com/vivien/i3blocks), if you NEED a systray and thus have to use i3bar instead of lemonbar. I have config files for that in here too. It will look different, but it's quite nice IMO.
- Thunar, because it's simple, and because it has thunar-volman. Perhaps I should look into other options? I really need automatic volume mounting.
- Firefox, but not with vimperator. Crazy, right? I use VimFX instead, it's much lighter and does everything I need. After all I just want to be able to browse without a mouse, not completely overhaul Firefox.
- i3lock
- vim - totally required :^)
- xfce4-power-manager

## Additional resources

- GTK Theme: [Arc-Darker](https://github.com/horst3180/Arc-theme)
- Firefox Theme: [Arc-Darker](https://github.com/horst3180/arc-firefox-theme)
- Icons: [Moka icon theme](http://snwh.org/moka/download/moka-icon-theme)


# Disclaimer

Use all files at your own risk. I'm not responsible if you broke
something because you just used the files as-is, without modifying them
to fit your system.

Pretend that the MIT license applies to all files in this repository. I don't really care what
you do with them - share, copy, modify, whatever. Just don't post them elsewhere and say you made them.
I use material from other people too, so I don't want to actually apply a license.

## Credits

Github usernames.

- jaagr - his dotfiles and git tracking were a big inspiration (read: I stole half his stuff). Author of lemonbuddy, without which I would never use lemonbar.
- airblader - author of i3-gaps. I also stole some of his configs.
- emkay443 - helped with the wallpaper script (I'm too stupid for bash).

# TODO

In order of significance:

- setup mpd/ncmpcpp
- setup rofi to replace dmenu
- rice zathura
- learn how to use and configure ranger

I also have to reinstall Arch on both laptop and desktop. My laptop needs an SSD, the system
is way too bloated, and I want to setup drive encryption since I take my laptop everywhere.  
As for my desktop, I don't boot into it much (all I do at my home PC is gaming, for which
I sadly still need Windows), but for some reason it behaves strangely. WINE especially has
some weird errors. Here I also want F2FS, maybe drive encryption too.
