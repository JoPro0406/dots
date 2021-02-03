dir() {
  local CUTOFF=1
  local IFS=/
  local my_path=($(print -P '%~'))
  local p
  echo -n "%B%F{blue}"
  for p in $my_path; do
    echo -n "${s}${p[0,$CUTOFF]}"
    local s=/
  done
  echo -n "${p:$CUTOFF}"
  echo -n "%f%b"
}

git_status() {
  local BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\s*\(.*\)/\1/')

  if [ ! -z $BRANCH ]; then
    echo -n "on %F{cyan}$BRANCH%f"
    [ ! -z "$(git status --short)" ] && echo -n " %F{yellow}*%f"
  fi
}

function _my_prompt() {
  local exit_code="$?"
  echo -n "%B%F{blue}╭─%f%b"
  echo -n " $(dir)"
  echo -n " $(git_status)"
  if [ "$exit_code" != 0 ]; then
    echo -n " %F{red}[%B$exit_code%b]%f"
  fi
  echo
  echo -n "%B%F{blue}╰→ %f%b"
}

setopt prompt_subst
PS1='$(_my_prompt)'
