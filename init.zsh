export zhiyuan=~/.config/zhiyuan
load () {
  local zsh_path=$zhiyuan/zsh
  [[ -n $1 ]] && source $zsh_path/$1.zsh
}

load basic
load prompt
load plugin
load extra
load alias
# 载入zsh-vi-mode后再加载，见mapping.zsh
if [[ -n "${TMUX}" ]]; then
  load mapping
fi
