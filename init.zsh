load () {
  local zsh_path=~/.config/zhiyuan/zsh
  [[ -n $1 ]] && source $zsh_path/$1.zsh
}

load basic
load prompt
load plugin
