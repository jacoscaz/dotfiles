
# DOTFILES

A collection of dotfiles, commands and instructions to set up a machine with my
favourite tools.

## Things to install on Mac OS

- [homebrew](https://brew.sh)
- [iTerm2](https://www.iterm2.com)
- [MS Visual Studio Code](https://code.visualstudio.com)
- [nvm](https://github.com/creationix/nvm)

Then, using `homebrew`:

```
brew install bash git tmux vim wget subversion
```

## Browsers

- Safari: [uBlock Origin](#)
- Firefox: [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/), [Privacy Badger](https://www.eff.org/privacybadger), [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
- Chrome: [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm), [Privacy Badger](https://www.eff.org/privacybadger)

Remember to set DuckDuckGo as the default search engine. Anything that it 
doesn't find can be quickly found using the `!g <query>` shortcut from DDG
itself to offload the search to Google.

On Firefox, disable `studies` and set `do not track` to `always`. 

## Locale

### Setting locales on macOS

Go to `System Preferences` --> `Language & Region` and select the `Ireland` 
region and `English U.S.` preferred language.

###  Setting locales on Linux

Make sure to enable the `en_IE.UTF-8` and (optionally) the `en_DK.UTF-8`
locales by editing `/etc/locale.gen` and running `locale-gen` as root.
After generating the locales, use whatever GUI tool is available to set
them as defaults depending on the desktop environment of choice.

### Setting locales in the terminal

See below.

## Shell

- symlink `bashrc` to `~/.bashrc`
- symlink `bash_profile` to `~/.bash_profile`

These will take care of a few things, including:

- setting locale-related environment variables
- aliasing `nvm` to speed up shell initialization
- customising bash' prompt with `git`-related info

On Linux, particularly when setting up a server, parts of `bashrc` and
`bash_profile` (such as locale settings) might be better off copied in:

- `/etc/profile` (global) or `~/.bash_profile` (personal) for `bash` 
- `/etc/zprofile` (global) or `~/.zprofile` (personal) for `zsh`

## MS Visual Studio

Install the following extensions:

- [VS Live Share](#)

## iTerm2

- import the color schemes in the `iterm2-color-schemes` folder
- set the color scheme to `solarized light`.

## Tmux

- copy or symlink [`tmux.conf`](./tmux.conf) to `~/.tmux.conf`.

## Vim

- copy or symlink [`vimrc`](./vimrc) to `~/.vimrc`.
- copy or symlink [`vim`](./vim) to `~/.vim`.

## Git

Remember to set the default user config options:

```sh
git config --global user.name "Your Name"
git config --global user.email "your@email"
```

Run the same commands without the `--global` flag to customize these options
on a per-project basis.
