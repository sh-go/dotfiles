# gitの設定（.bashrcの一番上に追加）
source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
source /opt/homebrew/etc/bash_completion.d/git-completion.bash

source /Users/shugo/google-cloud-sdk/completion.bash.inc
source /Users/shugo/google-cloud-sdk/path.bash.inc

## unstaged fileがある時は*, staged fileがあるときは+を表示
GIT_PS1_SHOWDIRTYSTATE=true
## stash fileがあるときは、$を表示
GIT_PS1_SHOWSTASHSTATE=true
## untracked fileがある時は、%を表示
GIT_PS1_SHOWUNTRACKEDFILES=true

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1='\[\n\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1 "[%s]")\n\[\033[00m\]\\$ '
else
    PS1='\[\n\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\]$(__git_ps1 "[%s]")\n\[\033[00m\]\\$ '
fi

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG --color=always'
alias ll='ls -alFG'
alias dc='docker-compose'
alias dcd='docker-compose down --rmi all --volumes --remove-orphans'
alias dcp='docker compose ps --format "table {{.Name}}\t{{.Service}}\t{{.Status}}"'