# My dotfiles

Configure linux workstation using Ansible.

Terminal tools are mostly inspired by [ this article ](https://remysharp.com/2018/08/23/cli-improved).

### System

- [ fzf ](https://github.com/junegunn/fzf) - It's an interactive Unix filter for command-line that can be used with any list; files, command history, processes, hostnames, bookmarks, git commits, etc.
- [ fd ](https://github.com/sharkdp/fd) - fd is a program to find entries in your filesystem. It is a simple, fast and user-friendly alternative to find
- git
- [ oh-my-zsh ](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) - Oh-My-Zsh is a framework for Zsh, the Z shell

### Packages

- snap
  - VS code
  - sublime
  - telegram
  - skype
  - spotify
- apt
  - redis 
  - [ ansible ](https://github.com/ansible/ansible)
  - build-essential
  - [ curl ](https://github.com/curl/curl) - Curl is a command-line tool for transferring data specified with URL syntax.
  - [ htop ](https://htop.dev/)
  - [ jq ](https://github.com/stedolan/jq) - is a lightweight and flexible command-line JSON processor
  - make
  - wget
  - zip
  - [ vim ](https://github.com/vim/vim)
  - [ xclip ](https://github.com/astrand/xclip) - xclip is a command line utility that is designed to run on any system with an
X11 implementation. It provides an interface to X selections ("the clipboard")
from the command line.
  - [ silversearcher-ag ](https://github.com/ggreer/the_silver_searcher) - A code searching tool similar to ack, with a focus on speed.
  - git-flow
  - [ fd-find ](https://github.com/sharkdp/fd)
- npm
    - [ tldr ](https://github.com/tldr-pages/tldr) - The tldr pages are a community effort to simplify man pages with practical examples.
    - 
- custom installation
    - [ diff-so-fancy ](https://github.com/so-fancy/diff-so-fancy) - strives to make your diffs human readable instead of machine readable. This helps improve code quality and helps you spot defects faster.

  # GUI
  - chromium-browser
  - [ regolith ](https://regolith-linux.org/) - Regolith is a modern desktop environment designed to let you work faster by reducing unnecessary clutter and ceremony. Built on top of Ubuntu, GNOME, and i3.  
## Bootstrap

First setup installation run the dot-bootstrap command.

```
$ ./bin/dot-bootstrap
```

After that you can run any scripts defined in the `$DOTFILES_PATH/bin`

```
$ dot-bootstrap
```

To dry-run the script run or check syntax use
```
$ dot-bootstrap dry-run

$ dot-bootstrap syntax-check
```