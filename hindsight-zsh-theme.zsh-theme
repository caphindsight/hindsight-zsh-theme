local ret_status="%(?::%{$fg_bold[yellow]%}[=$?]%{$reset_color%} )"
if [ "$UID" -eq 0 ]; then
    local usr_prefix="%{$fg[red]%}"
else
    local usr_prefix="%{$fg[cyan]%}"
fi

export LSCOLORS=ExFxCxDxBxegedabagacad

PROMPT='${ret_status}${usr_prefix}%~>%{$reset_color%} '

RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}git: "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓"
