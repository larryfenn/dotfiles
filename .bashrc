# Collect all Rproj files in one place
rm ~/Projects/*
ln -s ~/git/*/*.Rproj ~/Projects

# Which git projects have unstaged changes
function gitcheck()
{
    find ~/git -type d -name '.git' -maxdepth 2 -execdir bash -c 'if [[ $( git status ) != *"working tree clean"* ]]; then echo $( pwd); fi' ';'
}

# Remove DS_Store
function dsclean()
{
    find . -name ".DS_Store" -depth -exec rm {} \;
}

# My preferences for ls
alias ls="exa -lah --icons --git --group-directories-first"
alias tree="exa --tree --icons"

# PS1
PS1="\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]$ "
