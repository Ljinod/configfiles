PROMPT="%{${fg[cyan]}%}%n - %{$reset_color%}%{${fg[green]}%}[%~]%{$reset_color%}
%% "

RPROMPT='$(git_prompt_info) $(git_prompt_status)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}  "
ZSH_THEME_GIT_PROMPT_UNTRACKED=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}  "

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} "%{$reset_color%}
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} "%{$reset_color%}
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} "%{$reset_color%}
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}═"%{$reset_color%}
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} "%{$reset_color%}
