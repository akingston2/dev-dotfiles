# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/zsh/oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#POWERLEVEL9K_MODE='nerdfont-complete'
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME='avit'
ZSH_CUSTOM=$HOME/.config/zsh/oh-my-zsh/custom
ZSH_COLORIZE_TOOL=chroma

## powerlevel customization
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator background_jobs virtualenv time)
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B0" 
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B2" 
#POWERLEVEL9K_TIME_BACKGROUND='teal'


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
TERM=xterm-256color

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh
clear

token() {
  curl -sX POST "http://keycloak:8080/keycloak/auth/realms/IDCS/protocol/openid-connect/token" -H "Content-type: application/x-www-form-urlencoded" -d "grant_type=client_credentials&client_id=$1&client_secret=$1" | \
    jq ".access_token" | \
    sed 's/"//g' | \
    awk '{print "Bearer " $0}'
}

tmux="tmux -u2"
vim=nvim

# set up ssh for git
eval $(ssh-agent -s)
ssh-add ~/.ssh/github_rsa
clear
