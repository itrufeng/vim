# Vim

### Install(Only for MacOS)

```
git clone https://github.com/itrufeng/vim.git ~/Desktop/vim
sh ~/Desktop/vim/install.sh
rm -rf ~/Desktop/vim
```

### Screenshot

![Screenshot](./screenshot.png)

### Dependents

* [Homebrew](https://brew.sh) (`You must be install by your self`, we will install all of dependents by Homebrew)
* [MacVim](https://github.com/macvim-dev/macvim) (We will reinstall if you already have and override system version)
* [Vim8](https://vim.sourceforge.io)  (We will install it same time with MacVim)
* [Ack](https://github.com/petdance/ack2) (We will auto install it)
* [Ag](https://github.com/ggreer/the_silver_searcher) (We will auto install it)

### What plugin manager we used

* [Vim Plug](https://github.com/junegunn/vim-plug)

### Key Map

#### File

|Action|Key|Mode|
|---|---|---|
|Show/Hide Project Files|^ + n|Normal/Insert|
|Open Quickly|^ + p|Normal|
|Open Recent Quickly|\\e|Normal|

#### Search

|Action|Key|Mode|
|---|---|---|
|Search In Project By Ack|\f|Normal|

#### Move

|Action|Key|Mode|
|---|---|---|
|Move A Line UP|⌥ + j|Normal/Insert/Visual|
|Move A Line Down|⌥ + k|Normal/Insert/Visual|
|Easy Moving|\\\\s|Normal|

#### Code

|Action|Key|Mode|
|---|---|---|
|Comment|\\cc|Normal|

#### Window

|Action|Key|Mode|
|---|---|---|
|Jump To Up Window|^ + j|Normal|
|Jump To Down Window|^ + k|Normal|
|Jump To Left Window|^ + h|Normal|
|Jump To Right Window|^ + l|Normal|
|Save and Quit|\w|Normal/Insert|
|Quit|\q|Normal/Insert|

#### Cucumber

|Action|Key|Mode|
|---|---|---|
|Jump to steps define|^ + wd|Normal|


### Reference

* [VimAwesome](http://vimawesome.com)


