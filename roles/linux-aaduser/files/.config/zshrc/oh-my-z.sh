# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_COLORIZE_TOOL=chroma

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/highlighters
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZVM_CURSOR_STYLE_ENABLED=false

plugins=(
  1password
  aliases
  azure
  brew
  charm
  chucknorris
  colored-man-pages
  colorize # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colorize
  command-not-found
  common-aliases # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases
  copyfile # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copyfile
  copypath # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copypath
  cp # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/cp
  # dash - mac only app - https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dash
  direnv # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/direnv
  dirhistory # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory
  docker # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
  docker-compose # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose
  dotenv # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dotenv
  extract # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/extract
  fancy-ctrl-z # https://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
  fd # https://github.com/sharkdp/fd
  fzf # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf
  gh # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gh
  git # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
  git-commit # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-commit
  gitignore # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/gitignore
  golang # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/golang
  grc # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/grc
  helm # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/helm
  history # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history
  httpie # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/httpie
  # iterm2 # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/iterm2
  jira # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira
  kind # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kind
  kubectl # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectl
  kubectx # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/kubectx
  # macos # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
  magic-enter # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/magic-enter
  man # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/man
  # microk8s # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/microk8s
  minikube # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/minikube
  node # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/node
  nodenv # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nodenv
  npm # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm
  podman # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/podman
  # python
  qrcode # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/qrcode
  ripgrep # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ripgrep
  rsync # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/rsync
  singlechar # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/singlechar
  sudo # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo
  systemadmin # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemadmin
  systemd # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/systemd
  # taskwarrior # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/taskwarrior
  terraform # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/terraform
  # thefuck # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/thefuck
  themes # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/themes
  tig # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tig
  tmux # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
  ubuntu # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ubuntu
  vscode # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode
  wd
  z
  zsh-history-substring-search # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/history-substring-search
  zsh-interactive-cd
)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi
