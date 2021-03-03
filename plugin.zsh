load_plug () {
  local plug_path=~/.config/zhiyuan/zsh/plugins
  [[ -n $1 ]] && source $plug_path/$1
}

# 语法高亮
load_plug zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 自动提示
load_plug zsh-autosuggestions/zsh-autosuggestions.zsh

# Disabling suggestion for large buffers
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# 允许异步
ZSH_AUTOSUGGEST_USE_ASYNC=1

bindkey '^[l' autosuggest-accept
bindkey '^[m' autosuggest-execute
bindkey '^[h' autosuggest-clear

# 补全目录
fpath=(~/.config/zhiyuan/zsh/plugins/zsh-completions/src $fpath)
