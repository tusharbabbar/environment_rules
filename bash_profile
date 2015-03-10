#!/bin/bash

source ~/.git-completion.bash
source ~/.git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD


Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
On_IRed="\[\033[0;101m\]"     
On_IGreen="\[\033[0;102m\]"
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green

export PS1=$LIGHT_GRAY"\u@\h"'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$CYAN'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$MAGENTA'"$(__git_ps1 " (%s)"); \
  fi) '$BLUE$PathShort'$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$BLUE$PathShort'$ "; \
fi)' 


# export PS1=$LIGHT_GRAY"\u@\h"'$(
 #   if [[ $(__git_ps1) =~ \*\)$ ]]
  #  # a file has been modified but not added
   # then echo "'$YELLOW'"$(__git_ps1 " (%s)")
   # elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
  #  then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
  #  else echo "'$CYAN'"$(__git_ps'$BLUE" \w"$GREEN": "1 " (%s)")
  #  fi)'$BLUE" \w"$GREEN": "

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
shopt -s cdspell
alias mitm='mitmproxy -b 0.0.0.0 -p 8080'

function tabname {
    printf "\e]1;$1\a"
}

export WORKON_HOME=$HOME/.virtualenv
export PROJECT_HOME=$HOME/dev/
source /usr/local/bin/virtualenvwrapper.sh
