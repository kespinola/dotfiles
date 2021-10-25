alias cl="clear"
alias pg='ps -ef | grep'
alias pkill!="pkill -9 -f "

alias reload!='. ~/.zshrc'
alias vi="vim"

alias timezsh="time zsh -i -c echo"

# Alias for spotify to run in the background
alias spotify="nohup spotify &>/dev/null &; disown;" 

# SSH connection to Raspberry Pi
alias rpissh="ssh pi@192.168.1.91"

# conda aliases
alias act='source activate'

# "-sel clip" to paste to the system clipboard because the default is the mouse clipboard
alias rpipass='keyring get rpi pi | xclip -sel clip'

##
# Use a \ before a command to run the original one
##

alias cat='bat'

# preview files while searching
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

alias help='tldr'


alias top="sudo htop"

alias shortcuts="bat /home/dinko/.dotfiles/roles/zsh/keyboard_shortcuts.zsh"

export gitf () {search_result=$(git aliases | fzf | awk '{print substr($1, 1, length($1)-1)}'); if [[ -z $search_result ]]; then :; else eval 'git '$search_result; fi}

alias move-ws="sudo i3 move workspace to output"