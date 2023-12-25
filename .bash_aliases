alias vb='vim ~/.bashrc'
alias sb='source ~/.bashrc'
alias grep='grep --color=auto'

# For fzf on Debian
source /usr/share/doc/fzf/examples/key-bindings.bash
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='fdfind --type f --strip-cwd-prefix'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_OPTS=" --preview 'tree -C {}'"
export FZF_ALT_C_COMMAND="fdfind -t d . $HOME --follow"
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
