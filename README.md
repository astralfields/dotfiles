# Rice with fresh i3blocks and gruvbox sauce

## Screenshots

TODO: Add screenshots.

# Requirements

- [i3-gaps-next](https://github.com/Airblader/i3) ("next" branch required for Xresources import)
- [i3blocks-gaps](https://github.com/Airblader/i3blocks-gaps) (which works better with the i3bar added by i3-gaps-next)
- terminal emulator with 256 colors and Unicode support
- compton

As for the terminal, I use termite because it's so much easier to configure than urxvt and
does everything I need out-of-the-box, where urxvt needs like 10 plugins.

Unicode support is not actually required but the vim airline looks ugly without it.

## Other things you may want

- i3lock, to use my lock script (try it!)
- vim - totally required :^)
- mpd / ncmpcpp

I used to use lemonbar with jaagr's lemonbuddy but I needed a systray so I went back to i3blocks.
The config files are still in there but they probably don't fit this new rice anymore. Use at your
own leisure.

I'd also like to mention that I'm currently using xfce4-power-manager. That's because my laptop
uses some arcane technology which makes the screen brightness buttons very difficult to work
with, but Xfce's power manager can do it somehow.

## Additional resources

- GTK Theme: [Arc-Darker](https://github.com/horst3180/Arc-theme)
- Firefox Theme: [Arc-Darker](https://github.com/horst3180/arc-firefox-theme)
- Icons: [Moka icon theme](http://snwh.org/moka/download/moka-icon-theme)


# Disclaimer

Use all files at your own risk. I'm not responsible if you broke
something because you just used the files as-is, without modifying them
to fit your system.

Please pretend that the MIT license applies to all files in this repository. I don't really care what
you do with them - share, copy, modify, whatever. Just don't post them elsewhere and say you made them.
I use material from other people too, so I don't want to actually apply a license.

## Credits

Github usernames.

- Airblader - author of i3-gaps. I also stole some of his configs.
- emkay443 - helped with the wallpaper script (I'm too stupid for bash).

# TODO

In order of significance:

- setup rofi to replace dmenu
- rice zathura
- fix the horribly kludged ncmpcpp config (it works but oh god is it ugly, I wanna puke)
