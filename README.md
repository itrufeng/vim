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
|Show/Hide Project Files|⌘ + F1|Normal/Insert|
|Open Quickly|⌘ + ⇧ + O|Normal|

#### Search

|Action|Key|Mode|
|---|---|---|
|Search In Project By Ack|⌘ + ⇧ + F|Normal|
|Search In Project By Ag|⌘ + ⇧ + A|Normal|

#### Move

|Action|Key|Mode|
|---|---|---|
|Move A Line UP|⌥ + J|Normal/Insert/Visual|
|Move A Line Down|⌥ + K|Normal/Insert/Visual|
|Easy Moving|\\\\s|Normal|

#### Code

|Action|Key|Mode|
|---|---|---|
|Comment|\\cc|Normal|

#### Window

|Action|Key|Mode|
|---|---|---|
|Jump To Up Window|⌘ + ⇧ + J|Normal|
|Jump To Down Window|⌘ + ⇧ + K|Normal|
|Jump To Left Window|⌘ + ⇧ + H|Normal|
|Jump To Right Window|⌘ + ⇧ + L|Normal|

### Reference

* [VimAwesome](http://vimawesome.com)


