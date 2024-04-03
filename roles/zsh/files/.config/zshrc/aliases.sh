# Aliases
alias awscreds="code ~/.aws/credentials"
alias cls='printf "\033c"'
alias grg="go run main.go"
alias gword="grep --exclude-dir={var,mnt,sys,run,proc,tmp,lost+found,root,etc} --include=\*.{sh} -rnw '/' -e"
alias mk="minikube"
alias nbld="npm run build"
alias nvcode="code ~/.config/nvim/"
alias nvconf="nvim ~/.config/nvim/"
alias pm="podman"
alias ports="lsof -i -P -n"
alias rgw="rg --one-file-system --ignore-case"
alias src="source ~/.zshrc"
alias tc="terracognita"
alias tfmr="terraformer"
alias wdl="wd list"
alias zshcd="cd ~/.config/zshrc/"
alias zshcode="code ~/.config/zshrc/"
alias zshconf="nvim ~/.config/zshrc/"


# git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
