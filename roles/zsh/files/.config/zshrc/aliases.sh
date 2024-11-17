# Aliases
alias awscreds="code ~/.aws/credentials"
alias cls='printf "\033c"'
alias ctfa="cls && tofu apply"
alias ctfat="cls && tofu apply -target"
alias ctfp="cls && tofu plan"
alias ctfpt="cls && tofu plan -target"
alias ctfss="cls && tofu state show"
# alias grg="go run main.go"
alias gword="grep --exclude-dir={var,mnt,sys,run,proc,tmp,lost+found,root,etc} --include=\*.{sh} -rnw '/' -e"
alias mk="minikube"
alias mux="tmuxinator"
alias nbld="npm run build"
alias nvcode="code ~/.config/nvim/"
alias nvconf="nvim ~/.config/nvim/"
alias pm="podman"
alias ports="lsof -i -P -n"
alias rgw="rg --one-file-system --ignore-case"
alias src="source ~/.zshrc"
alias tc="terracognita"
alias tfmr="terraformer"
alias tree="/home/linuxbrew/.linuxbrew/Cellar/tree/2.1.1_1/bin/tree"
alias wdl="wd list"
alias zshcd="cd ~/.config/zshrc/"
alias zshcode="code ~/.config/zshrc/"
alias zshconf="nvim ~/.config/zshrc/"


# git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
