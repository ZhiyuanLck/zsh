load_plug () {
  local plug_path=$zhiyuan/zsh/plugins
  local script
  if [[ $1 == */* ]]; then
    script=$1
  else
    script=$1/$1.zsh
  fi
  [[ -n $1 ]] && source $plug_path/$script
}

# 语法高亮
load_plug zsh-syntax-highlighting

# 自动提示
load_plug zsh-autosuggestions

# Disabling suggestion for large buffers
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# 用历史命令和自动补全补全
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# 允许异步
ZSH_AUTOSUGGEST_USE_ASYNC=1

# 历史命令搜索
load_plug zsh-history-substring-search

# 括号自动补全
load_plug zsh-autopair/autopair.zsh

# command-not-found
source $zhiyuan/zsh/plugins/command-not-found/command-not-found.zsh

# vi-mode
# 不在tmux中
if [[ -z "${TMUX}" ]]; then
  load_plug zsh-vi-mode
  ZVM_VI_SURROUND_BINDKEY=s-prefix
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  # 恢复被覆盖的快捷键
  zvm_after_init_commands+=('source $zhiyuan/zsh/mapping.zsh')
fi
