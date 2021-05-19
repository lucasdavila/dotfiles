# enable git auto completion
autoload -U compinit && compinit
zmodload -i zsh/complist

# show current git repo and branch names on terminal

# load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%r %F{green}(%b)%f'
#formats '(%b)'

# set up the prompt (with git repo and branch name)
setopt PROMPT_SUBST
PROMPT='%n ${vcs_info_msg_0_} $ '