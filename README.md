# Ocean v2

![temp-screenshot](http://i.imgur.com/dUXJ6tT.png)

This is what the theme currently looks like, but I have changes planned.
Check the TODO list at the bottom.

# Requirements

- [i3-gaps](https://github.com/Airblader/i3)
- [polybar](https://github.com/jaagr/polybar)
- terminal emulator with 256 colors and Unicode support (configs provided for termite and rxvt-unicode)
- compton

I use the i3-gaps "next" branch but the stable branch should work too. Not gonna test it, you're on your own.

## Other software you may want

...because I include configs and scripts for them:

- dunst
- i3lock
- vim

I am also currently using xfce4-power-manager. That's because my laptop uses some
arcane technology which makes the screen brightness buttons very difficult to work
with, but Xfce's power manager can do it somehow.

## How do I copy this?

Basic setup:

- `git clone` this repo into your home directory
- run the `dotfiles-apply` scripts in $HOME/scripts/ (NB: doesn't exist yet!)
- install the [Base16](https://github.com/chriskempson/base16) Ocean theme for everything you need (editor, shell, terminal)
- install GTK theme: [Arc-Darker](https://github.com/horst3180/Arc-theme)
- install icons: [Moka icon theme](http://snwh.org/moka/download/moka-icon-theme)


# Disclaimer

Use at your own risk. I'm not responsible if you broke something because you just used everything
as-is, without modifying files to fit your system.

Please pretend that the MIT license applies to all files in this repository. I don't really care what you do
with them - share, copy, modify, whatever. Just don't post them elsewhere and say you made them. I use
material from other people too, so I don't want to actually apply a license.

# Credits

Github usernames.

- Airblader - author of i3-gaps, and I stole some parts of his configs.
- emkay443 - helped with some scripts (I can't bash).

# TODO

In order of significance:

- [ ] write dotfiles-apply script to symlink configs to files in git folder
- [ ] find more fitting colorscheme (muted pastels don't really fit the blue glow)
- [ ] rice zathura
