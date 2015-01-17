Requirements
------------

Set zsh as your login shell.

    chsh -s /bin/zsh

Install
-------

First clone this repo to your work folder:

```
git clone git@github.com:gemaderus/dotfiles.git
```

Remove any .zshrc. 

```
cd ~
rm -rf .zshrc
```

Then run the installation script: 

```
    cd work/personal/dotfiles
    ./install.sh
```

This will create symlinks for config files in your home directory. Try to stay update this dotfiles.