# Aliases
alias tfmr="terraformer"
alias tc="terracognita"
alias wdl="wd list"
alias grg="go run main.go"
alias cls='printf "\033c"'
alias zshconf="nvim ~/.config/zshrc/"
alias zshcode="code ~/.config/zshrc/"
alias src="source ~/.zshrc"
alias nvconf="nvim ~/.config/nvim/"
alias nvcode="code ~/.config/nvim/"
alias ports="lsof -i -P -n"

alias gword="grep --exclude-dir={var,mnt,sys,run,proc,tmp,lost+found,root,etc} --include=\*.{sh} -rnw '/' -e"
alias rgw="rg --one-file-system --ignore-case"

alias wdl="wd list"
alias nbld="npm run build"

alias awscreds="code ~/.aws/credentials"

# git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
