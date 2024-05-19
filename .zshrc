autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

eval "$(starship init zsh)"

# ALIAS
source ~/.config/zsh/.zshalias

source ~/.config/zsh/pluggins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/pluggins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

## HISTORY


## NVM
PATH=~/.console-ninja/.bin:$PATH

# Created by `pipx`
export PATH="$PATH:/home/elposi/.local/bin"

alias francinette=/home/theposi/francinette/tester.sh

alias paco=/home/theposi/francinette/tester.sh

export PATH=$PATH:/home/theposi/.spicetify

# Created by `pipx` on 2024-05-02 10:04:05
export PATH="$PATH:/home/theposi/.local/bin"
