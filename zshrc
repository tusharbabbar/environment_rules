# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="xiong-chiamiov-plus"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

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

export PATH=$HOME/bin:/usr/local/bin:/opt/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

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

alias ll='ls -lah'
alias gg='git status -s'

export PATH=$PATH:~/Tools/Android/sdk/tools/:~/Tools/Android/sdk/platform-tools/:~/Tools/eclipse/
export PATH="$PATH:~/Downloads/apache-maven-3.0.5/bin/"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias adbk='adb kill-server'
alias adbd='adb devices'
alias adbr='adb root'
alias adbc='adb connect %1'
export PATH=/usr/local/bin:/Users/tushar/.rvm/gems/ruby-1.9.3-p448/bin:/Users/tushar/.rvm/gems/ruby-1.9.3-p448@global/bin:/Users/tushar/.rvm/rubies/ruby-1.9.3-p448/bin:/Users/tushar/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/tushar/Tools/Android/sdk/tools/:/Users/tushar/Tools/Android/sdk/platform-tools/:/Users/tushar/Tools/eclipse/:~/Downloads/apache-maven-3.0.5/bin/

alias play='java -jar /Users/tushar/Tools/google-play-crawler/googleplay/googleplaycrawler-0.3.jar -f /Users/tushar/Tools/google-play-crawler/googleplay/crawler.conf' 
alias cpython='ipython --classic --autoindent'
alias myip="ifconfig |grep inet|awk '{print $2}'"
alias mitm='mitmproxy -b 0.0.0.0 -p 8080'

function tabname {
    printf "\e]1;$1\a"
}

export WORKON_HOME=$HOME/.virtualenv
export PROJECT_HOME=$HOME/dev/
source /usr/local/bin/virtualenvwrapper.sh
