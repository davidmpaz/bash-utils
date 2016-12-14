# theme set up
export TERM="xterm-256color"
POWERLEVEL9K_MODE='awesome-fontconfig'
#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf073 %d.%m.%y}"

# icons, since we get them replaced
POWERLEVEL9K_OK_ICON="\uf14a"
POWERLEVEL9K_FAIL_ICON="\uf0e7"
POWERLEVEL9K_VCS_BRANCH_ICON="\uF126 "
POWERLEVEL9K_VCS_STASH_ICON=" \uf0ea "
POWERLEVEL9K_VCS_COMMIT_ICON="\uf0c7 "
POWERLEVEL9K_VCS_TAG_ICON="\uf11e "
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=" \uf0ab "
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=" \uf0aa "
POWERLEVEL9K_VCS_BOOKMARK_ICON="\uf097 "

get_icon_by_repo() {
  local remote=`git ls-remote --get-url 2>/dev/null`
  if [[ "$remote" =~ "github" ]] then
    POWERLEVEL9K_VCS_GIT_ICON='\uf113 '
  elif [[ "$remote" =~ "bitbucket" ]] then
    POWERLEVEL9K_VCS_GIT_ICON='\uf171 '
  elif [[ "$remote" =~ "gitlab" ]] then
    POWERLEVEL9K_VCS_GIT_ICON='\uf296 '
  else
    POWERLEVEL9K_VCS_GIT_ICON='\uf1d3 '
  fi
}

get_icon_by_repo

