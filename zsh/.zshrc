# Path to your oh-my-zsh installation.
export ZSH=$HOME/.config/zsh/oh-my-zsh
export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
export LIBGL_ALWAYS_INDIRECT=1
export PATH=$PATH:/home/akingston2/.local/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#POWERLEVEL9K_MODE='nerdfont-complete'
#ZSH_THEME="powerlevel9k/powerlevel9k"
export ZSH_THEME='af-magic'
export ZSH_CUSTOM=$HOME/.config/zsh/oh-my-zsh/custom
export ZSH_COLORIZE_TOOL=chroma

# GOLANG
export GOPATH=~/go
export GOBIN=~/go/bin
export GOROOT=/usr/local/go
export GONOSUMDB=github.com/securiport
export GOPRIVATE=github.com/securiport
export PATH=$PATH:$GOROOT/bin:$GOBIN



# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down


source $ZSH/oh-my-zsh.sh
TERM=xterm-256color

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh
clear


alias tmux="tmux -u2"
alias vim="nvim"

token() {
  curl -sX POST "https://$1.sp.swarm/keycloak/auth/realms/IDCS/protocol/openid-connect/token" -H "Content-type: application/x-www-form-urlencoded" -d "grant_type=client_credentials&client_id=$2&client_secret=$2" --ssl --cacert /ssl/ca.crt | \
    jq ".access_token" | \
    sed 's/"//g' | \
    awk '{print "Bearer " $0}'
}

source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# set up ssh for git
eval $(ssh-agent -s)
ssh-add ~/.ssh/github_rsa
clear
