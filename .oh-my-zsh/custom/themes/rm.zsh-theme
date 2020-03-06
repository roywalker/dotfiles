function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[red]%}ssh "
  fi
}

PROMPT='$(ssh_connection)%{$fg[cyan]%}%c$(parse_git_dirty)$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} "
