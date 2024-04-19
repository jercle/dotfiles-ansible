# https://spaceship-prompt.sh/options/
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_FORMAT='%D{%a %b %d, %H:%M}'
SPACESHIP_BATTERY_SHOW=always
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_KUBECTL_SHOW=true
# SPACESHIP_DIR_TRUNC_REPO=false
# SPACESHIP_GIT_STATUS_UNTRACKED	?	Indicator for untracked changes
# SPACESHIP_GIT_STATUS_ADDED	+	Indicator for added changes
# SPACESHIP_GIT_STATUS_MODIFIED	!	Indicator for unstaged files
# SPACESHIP_GIT_STATUS_RENAMED	»	Indicator for renamed files
# SPACESHIP_GIT_STATUS_DELETED	✘	Indicator for deleted files
# SPACESHIP_GIT_STATUS_STASHED	$	Indicator for stashed changes
# SPACESHIP_GIT_STATUS_UNMERGED	=	Indicator for unmerged changes
# SPACESHIP_GIT_STATUS_AHEAD	⇡	Indicator for unpushed changes (ahead of remote branch)
# SPACESHIP_GIT_STATUS_BEHIND	⇣	Indicator for unpulled changes (behind of remote branch)
# SPACESHIP_GIT_STATUS_DIVERGED	⇕	Indicator for diverged changes (diverged with remote branch)

SPACESHIP_SUDO_SHOW=true
SPACESHIP_SUDO_SUFFIX=" "
SPACESHIP_TERRAFORM_SHOW=true

SPACESHIP_PROMPT_ORDER=(
  # ansible
  async
  # user # Username section
  dir  # Current directory section
  host          # Hostname section
  git # Git section (git_branch + git_status)
  package # Package version
  node # Node.js section
  golang # Go section
  lua
  # php           # PHP section
  # rust          # Rust section
  docker # Docker section
  docker_compose
  aws    # Amazon Web Services section
  gcloud # Google Cloud Platform section
  # venv   # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  kubectl   # Kubectl context section
  # line_sep
  terraform # Terraform workspace section
  exec_time # Execution time
  time      # Time stamps section
  # battery   # Battery level and status
  azure # Current Azure Subscription
  line_sep  # Line break
  # vi_mode       # Vi-mode indicator
  exit_code # Exit code section
  sudo
  char      # Prompt character
)
