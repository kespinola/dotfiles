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
alias activate='source activate'

# "-sel clip" to paste to the system clipboard because the default is the mouse clipboard
alias rpipass='keyring get rpi pi | xclip -sel clip'