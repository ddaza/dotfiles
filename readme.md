
# Custom configs:

## Cool cli tools
 - https://github.com/chubin/cheat.sh

## For OSX consider
 - https://github.com/rgcr/m-cli

## Ctags
 - https://github.com/romainl/ctags-patterns-for-javascript
 - https://github.com/jb55/typescript-ctags
 - https://github.com/HerringtonDarkholme/yats.vim

# Bash_it

This is a cool tool to enhance your bash productivity
https://github.com/Bash-it/bash-it

To backup your settings use this script provided by the creator
https://github.com/nwinkler/dotfiles/blob/master/home/bin/backup-bash-it

change the variable `BACKUP_FILE_NAME` to where you want it to create your backup script

Use faster git status in the command line
https://github.com/romkatv/gitstatus

# VsCodium

To use vscode marketplace extensions we need to chance a config file.

- The file is in (in MacOs) `/Applications/VSCodium.app/Contents/Resources/app/product.json`
- Change the `extensionGallery` key from this

  ```
  "extensionsGallery": {
    "serviceUrl": "https://open-vsx.org/vscode/gallery",
    "itemUrl": "https://open-vsx.org/vscode/item"
  },
  ```
  to this

  ```
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "itemUrl": "https://marketplace.visualstudio.com/items"
  },
  ```

- change it back when done


## Backup Extensions

According to this [Stack Overflow](https://superuser.com/questions/1080682/how-do-i-back-up-my-vs-code-settings-and-list-of-installed-extensions)

Here is how to:

Backup the extensions list
```sh
codium --list-extensions > extensions.txt
```

And install it
```sh
cat extensions.txt | xargs -n 1 codium --install-extension
```



# Powerline fonts

https://github.com/powerline/fonts

# TMUX 
Tmux Plugin manager - https://github.com/tmux-plugins/tpm

https://github.com/tmux-plugins/tmux-copycat
https://github.com/tmux-plugins/tmux-yank
https://github.com/tmux-plugins/tmux-sensible
