autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

for FILE in ~/.config/zshrc/*; do
    source $FILE
done


source $ZSH/oh-my-zsh.sh
