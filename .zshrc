# Path to your oh-my-zsh installation.
  export ZSH=/home/marcwe/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="jreese"
ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/marcwe/.rvm/bin:/home/marcwe/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# mw start

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export PS1="[%* - %D] %d %% "
export PS1=" %d %% "
# mw end

#mw from past conf
#mw display current directory
settitle() { printf "\e]0;$@\a" }
dir_in_title() { settitle $PWD }
chpwd_functions=(dir_in_title)
#mw
#mw
PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

## ZSH_THEME_GIT_PROMPT_PREFIX="("
## ZSH_THEME_GIT_PROMPT_SUFFIX=")"
## ZSH_THEME_GIT_PROMPT_DIRTY=""
## ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='$(git_prompt_status)%{$reset_color%}'

## ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
## ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
## ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
## ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
## ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
## ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"
#mw
#mw end from past conf
ZSH_THEME="random"
alias ipconfig='/home/marcwe/shcripts/ipconfig.sh'
playtimesec () { ffprobe -i "$@" -v quiet -show_format | sed -n 's/duration=//p'; }

playtimehms () { ffprobe -i "$@" -v quiet -show_format -sexagesimal | sed -n 's/duration=//p'; }

pcomlookup () {nslookup m.pcom.edu;nslookup m.pcom.edu ns1.comcastbusiness.net;nslookup m.pcom.edu 8.8.8.8;nslookup www.pcom.edu;nslookup www.pcom.edu ns1.comcastbusiness.net;nslookup www.pcom.edu 8.8.8.8;nslookup web.pcom.edu;nslookup web.pcom.edu ns1.comcastbusiness.net;nslookup web.pcom.edu 8.8.8.8;nslookup dev.pcom.edu;nslookup dev.pcom.edu ns1.comcastbusiness.net;nslookup dev.pcom.edu 8.8.8.8;nslookup pcs.pcom.edu;nslookup pcs.pcom.edu ns1.comcastbusiness.net;nslookup pcs.pcom.edu 8.8.8.8;}

mylookup () { nslookup $@;nslookup $@ ns1.comcastbusiness.net;nslookup $@ 8.8.8.8; }
