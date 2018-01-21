# My dotfiles

Configure mac. Setup and management using [rcm](http://thoughtbot.github.io/rcm/rcm.7.html).

## Scripts

### Bootstrap

When running for the first time run the install script.

```
$ ./up.sh
```

### Resave

After adding a new dotfile resave the install script.

```
$ dotup
```

## Samples

### gitconfig

```
 This is Git's per-user configuration file.
[user]
# Please adapt and uncomment the following lines:
name = NAME 
email = EMAIL 
[core]
  editor = /usr/bin/vim
```
