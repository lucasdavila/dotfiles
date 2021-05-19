# show git branch and folder name in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# enable git auto completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi