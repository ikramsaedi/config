autoload -Uz vcs_info
precmd() { vcs_info }
# auto loads ur version control info
# into vcs variable to use in prompt

zstyle ':vcs_info:git:*' formats '%b'
# formats the vcs info into branch name

setopt PROMPT_SUBST
PROMPT='%U%B%n%u ${PWD/#$HOME/~}%b [%B%F{076}${vcs_info_msg_0_}%f%b] %% '
# %n = your username
# %F{colour} = set colour
# 076 -> colour i stole off https://www.tweaking4all.com/software/macosx-software/xterm-color-cheat-sheet/
# %U = underline
# %B = bold

alias gcm="git commit -m"
alias gs="git status"
alias glo="git log --oneline"
alias python=/usr/bin/python3
