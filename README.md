# Ocean v2

![temp-screenshot](http://i.imgur.com/dUXJ6tT.png)

This is pretty much what it's going to look like when done. Still have a few kinks to work out though.

# Requirements

- [i3-gaps](https://github.com/Airblader/i3)
- [polybar](https://github.com/jaagr/polybar)
- terminal emulator with 256 colors and Unicode support (configs provided for termite and rxvt-unicode)
- compton

I use i3-gaps' "next" branch and am not sure if you actually need it, perhaps the stable branch works too?

## Other software you may want

...because I include configs and scripts for them:

- dunst
- i3lock
- vim
- mpd + ncmpcpp

I am also currently using xfce4-power-manager. That's because my laptop uses some
arcane technology which makes the screen brightness buttons very difficult to work
with, but Xfce's power manager can do it somehow.

## Additional resources

- [Base16](https://github.com/chriskempson/base16) Ocean Theme for everything (editor, shell, terminal)
- GTK Theme: [Arc-Darker](https://github.com/horst3180/Arc-theme)
- Firefox Theme: [Arc-Darker](https://github.com/horst3180/arc-firefox-theme)
- Icons: [Moka icon theme](http://snwh.org/moka/download/moka-icon-theme)


# Disclaimer

Use all files at your own risk. I'm not responsible if you broke something because you just used the files
as-is, without modifying them to fit your system.

Please pretend that the MIT license applies to all files in this repository. I don't really care what you do
with them - share, copy, modify, whatever. Just don't post them elsewhere and say you made them. I use
material from other people too, so I don't want to actually apply a license.

# Credits

Github usernames.

- Airblader - author of i3-gaps, and I stole some parts of his configs.
- emkay443 - helped with some scripts (I can't bash).

# TODO

In order of significance:

- [x] switch to polybar
- [ ] rice zathura
- [ ] fix the horribly kludged ncmpcpp config (it works but oh my *god* is it ugly)
