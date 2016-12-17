# Tracy's fork of holman does dotfiles

Your dotfiles are how you personalize your system. These are mine.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.bash` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/holman/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.bash**: Any files ending in `.bash` get loaded into your
  environment.
- **topic/path.bash**: Any file named `path.bash` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.bash**: Any file named `completion.bash` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Pathogen vim
I use Pathogen.vim to manage plugins. The script is located in the `vim.symlink/autoload` directory. 

To activate Pathogen, make sure these lines are in the symlinked `.vimrc`:
```
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
```
I install plugins as submodules so that every plugin will be kept in its own
git repository. To install another package, follow these steps: 

`git submodule add /path/to/git/repo bundle/name-of-plugin`
`git add .`
`git commit -m "install package as submodule"`

To install Vim environment on another machine: 
- Clone down repo
- cd to `.vim`
- `git submodule init`
- `git submodule update`

To upgrade plugin bundle:
- cd to bundle directory
- `git pull origin master`

To upgrade all bundled plugins: 
`git submodule foreach git pull origin master`

## Sublime
TODO: Write a script to handle the following

All the Sublime Text user settings are stored in the `Packages/User`
directory of the SUblime data folder. To install these settings on another
machine, clone down the repo, dump the current packages in the install,
something like `rm -rf ~/Library/Application\ Support/Sublime\ Text\
2/Packages/User`.

Then symlink the dotfiles. It should be something like this: ``ln -s
~/.dotfiles/sublime/User/ ~/Library/Application\ Support/Sublime\ Text\
2/Packages/User``
