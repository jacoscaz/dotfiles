
# DOTFILES

A collection of dotfiles, commands and instructions to set up a machine with my favourite tools.

## Things to intall on Mac OS

- [zsh + oh-my](https://ohmyz.sh)
- [homebrew](https://brew.sh)
- [iTerm2](https://www.iterm2.com)
- [Docker](#)
- [MS Visual Studio Code](https://code.visualstudio.com)
- [nvm](https://github.com/creationix/nvm)
- [Fira Code](https://github.com/tonsky/FiraCode)

Using `homebrew`, install `git` and `tmux`.

## Browsers

- Safari: [uBlock Origin](#)
- Firefox: [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/), [Privacy Badger](https://www.eff.org/privacybadger)
- ~Chrome: [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), [Privacy Badger](https://www.eff.org/privacybadger)~ DO NOT USE CHROME
- Vivaldi: [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), [Privacy Badger](https://www.eff.org/privacybadger)

Remember to set DuckDuckGo as the default search engine. Anything that it doesn't find can be quickly found using the `!g <query>` shortcut from DDG itself to offload the search to Google.

On Firefox, disable `studies` and set `do not track` to `always`. 

## Locale on Mac OS

Go to `System Preferences` --> `Language & Region` and select the `Ireland` region and `English U.S.` preferred language.

## Locale on Linux

Make sure to enable the `en_IE.UTF-8` and (optionally) the `en_DK.UTF-8` locales by editing `/etc/locale.gen` and running `locale-gen` as root. 

Copy or symlink [`locale.sh`](./locale.sh) to your home directory and source it from:

- `/etc/profile` (global) or `~/.bash_profile` (personal) for `bash` 
- `/etc/zprofile` (global) or `~/.zprofile` (personal) for `zsh`

## Environment variables & aliases

Copy [`environment.sh`]('./environment.sh`) and [`aliases.sh`](./aliases.sh) to your home directory and source them from: 

- `/etc/profile` (global) or `~/.bash_profile` (personal) for `bash` 
- `/etc/zprofile` (global) or `~/.zprofile` (personal) for `zsh`

## MS Visual Studio

Install the following extensions:

- [VS Live Share](#)
- [Gruvbox Themes](#)
- [Vim](#)

Select the `gruvbox dark` color theme using `Code --> Preferences --> Color Theme`.

Edit preferences to use `Fira Code` font:

```
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
```

## iTerm2

For the color theme, download and install [the `.itermcolors` files for Gruvbox](https://github.com/morhetz/gruvbox-contrib/blob/master/iterm2/gruvbox-dark.itermcolors).
Set the font to `Fira Code`.

## Tmux

Copy or symlink [`tmux.conf`](./tmux.conf) to `~/.tmux.conf`.

## Vim

- Copy or symlink [`vimrc`](./vimrc) to `~/.vimrc`.
- Copy or symlink [`vim`](./vim) to `~/.vim`.

## Git

Remember to set the default user config options:

```sh
git config --global user.name "Your Name"
git config --global user.email "your@email"
```

Run the same commands without the `--global` flag to customize these options on a per-project basis.
