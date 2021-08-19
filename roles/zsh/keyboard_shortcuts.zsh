# List of keyboard shortcuts for CLI tools

#######
# FZF #
#######

<CTRL+T> # list files+folders in current directory (e.g., git commit <CTRL+T>, select a few files using <TAB>, finally <Return>)
<CTRL+R> # search history of shell commands
<ALT+C>  # fuzzy change directory

######
# FD #
######

fd cli   # find all files containing "cli"
fd -e md  # find files all with .md extension
fd cli -x wc -w  # find "cli" and run `wc -w` on each file

