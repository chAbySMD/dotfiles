export ZSH="$HOME/.oh-my-zsh"
export CAPACITOR_ANDROID_STUDIO_PATH="/opt/android-studio/bin/studio"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_HOME="$HOME/Android/Sdk"
export GIT_EDITOR="nvim"
export OPENROUTER_API_KEY='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'

plugins=(git zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting zsh-eza)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias nc="NVIM_APPNAME=nvim-coc nvim" 
alias vi="NVIM_APPNAME=nvim-chaby nvim" 
alias ls='eza $eza_params'


# Some stuff
bindkey -s ^f "tmux-sessionizer\n"

# PATH
export PATH="$HOME/bin:$PATH"

eval $(keychain --eval --quiet ~/.ssh/server)


