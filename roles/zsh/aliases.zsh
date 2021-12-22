####################################################
# Use a \ before a command to run the original one #
####################################################

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

alias cat='bat'

# preview files while searching
alias preview="fzf --preview 'bat --color \"always\" {}'"

alias help='tldr'

export treeL () {tree -L $1}

alias top="sudo htop"

alias shortcuts="bat /home/dinko/.dotfiles/roles/zsh/keyboard_shortcuts.zsh"

export gitf () {search_result=$(git aliases | fzf | awk '{print substr($1, 1, length($1)-1)}'); if [[ -z $search_result ]]; then :; else eval 'git '$search_result; fi}

alias move-ws="sudo i3 move workspace to output"

alias sys-info="neofetch"