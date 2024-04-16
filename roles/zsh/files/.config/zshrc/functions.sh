fex() {
  if [ -z "$1" ]; then
    if [ ! -f ~/.env ]; then
      echo "~/.env not found!"
    else
      echo "Export the following from ~/.env:"
      grep -v "^#" ~/.env | grep -v -e '^[[:space:]]*$'
      export $(grep -v "^#" ~/.env | grep -v -e '^[[:space:]]*$' | xargs)
    fi
  else
    if [[ "$1" == "mod" ]]; then
      code ~/.env
    elif [[ "$1" == "show" ]]; then
        grep -v "^#" ~/.env | grep -v -e '^[[:space:]]*$' | sed -E "s/(.*)=.*/\1/"
    elif [[ "$1" == "unset" ]]; then
      if [ ! -f ~/.env ]; then
        echo "./.env not found!"
      else
        echo "Unset the following from ~/.env:"
        grep -v "^#" ~/.env | grep -v -e '^[[:space:]]*$' | sed -E "s/(.*)=.*/\1/"
        unset $(grep -v "^#" ~/.env | grep -v -e '^[[:space:]]*$' | sed -E "s/(.*)=.*/\1/" | xargs)
      fi
    else
      if [ -z "$2" ]; then
        if [ ! -f "$1"/.env ]; then
          echo "$1/.env not found!"
        else
          echo "Set the following from $1/.env:"
          grep -v "^#" "$1"/.env | grep -v -e '^[[:space:]]*$'
          export $(grep -v "^#" "$1"/.env | grep -v -e '^[[:space:]]*$' | xargs)
        fi
      else
        if [[ "$2" == "unset" ]]; then
          if [ ! -f "$1"/.env ]; then
            echo "$1/.env not found!"
          else
            echo "Unset the following from $1/.env:"
            grep -v "^#" "$1"/.env | grep -v -e '^[[:space:]]*$' | sed -E "s/(.*)=.*/\1/"
            unset $(grep -v "^#" "$1"/.env | grep -v -e '^[[:space:]]*$' | sed -E "s/(.*)=.*/\1/" | xargs)
          fi
        elif [[ "$2" == "mod" ]]; then
          code "$1"/.env
        fi
      fi
    fi
  fi
}


fshow() {
  git log --graph --color=always \
    --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
    fzf --ansi --preview "echo {} \
    | grep -o '[a-f0-9]\{7\}' \
    | head -1 \
    | xargs -I % sh -c 'git show --color=always %'" \
      --bind "enter:execute:
            (grep -o '[a-f0-9]\{7\}' \
                | head -1 \
                | xargs -I % sh -c 'git show --color=always % \
                | less -R') << 'FZF-EOF'
            {}
FZF-EOF"
}


gacp() {
  git add .
  git commit -m "$1"
  git push
}


mans() {
  man -k . |
    fzf -n1,2 --preview "echo {} \
    | cut -d' ' -f1 \
    | sed 's# (#.#' \
    | sed 's#)##' \
    | xargs -I% man %" --bind "enter:execute: \
      (echo {} \
      | cut -d' ' -f1 \
      | sed 's# (#.#' \
      | sed 's#)##' \
      | xargs -I% man % \
      | less -R)"
}


wdc() {
  wd $1 && code .
}


wdv() {
  wd $1 && nvim .
}
