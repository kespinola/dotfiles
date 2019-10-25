# My dotfiles

Configure linux workstation using Ansible.

### Languages

Languages are managed with [asdf](https://asdf-vm.com/#/).

- Ruby
- Golang
- Nodejs
- Python
- Elixir
- Terraform

### System

- fzf
- git
- tmux
- vim
- zsh

### Services

- redis

### Packages

- snap
- apt

## Bootstrap

Firt setup installation run the dot-bootstrap command.

```
$ ./bin/dot-bootstrap
```

After that you can run any scripts defined in the `$DOTFILES_PATH/bin`

```
$ dot-bootstrap
```
