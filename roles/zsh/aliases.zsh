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
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# fzf good to know
# CTRL-T - Paste the selected files and directories onto the command-line
# CTRL-R - Paste the selected command from history onto the command-line
# ALT-C - cd into the selected directory 