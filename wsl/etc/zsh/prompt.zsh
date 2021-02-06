dir() {
  local CUTOFF=1
  local IFS=/
  local my_path=($(print -P '%~'))
  local p
  echo -n "%B%F{$1}"
  for p in $my_path; do
    echo -n "${s}${p[0,$CUTOFF]}"
    local s=/
  done
  echo -n "${p:$CUTOFF}"
  echo -n "%f%b"
}

git_status() {
  local BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\s*\(.*\)/\1/')

  if [ -n "$BRANCH" ]; then
    echo -n "%F{$1}[%f %F{$2}$BRANCH%f"
    [ -n "$(git status --short)" ] && echo -n " %F{$3}*%f"
    echo -n " %F{$1}]%f"
  fi
}

function _my_prompt() {
  local exit_code="$?"
  local upper_line=""
  upper_line+="$(git_status blue cyan yellow)"
  if [ "$exit_code" != 0 ]; then
    upper_line+=" %F{red}[ %B$exit_code%b ]%f"
  fi
  if [ -n "$upper_line" ]; then
    echo -n "$upper_line"
    echo
  fi
  echo -n "$(dir blue) %B%F{blue}|%f%b "
}

setopt prompt_subst
PS1='$(_my_prompt)'
