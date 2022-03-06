
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

I use the vscode alternative and sometimes their extensions are not updated as often or are as popular.
So, to get the VsCode extensions you need to chance a config file like this:

- The file is in `/Applications/VSCodium.app/Contents/Resources/app/product.json`
- you need to change the `extensionGallery` key from this

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

# Powerline fonts

https://github.com/powerline/fonts
