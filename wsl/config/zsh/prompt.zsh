#!/usr/bin/env zsh

_dir() {
  local CUTOFF=1
  local IFS=/
  local my_path=($(print -P '%~'))
  local p
  echo -n "%B%F{$1}"
  [ "${my_path[0,1]}" != "~" ] && echo -n "/"
  for p in $my_path; do
    echo -n "${s}${p[0,$CUTOFF]}"
    local s=/
  done
  echo -n "${p:$CUTOFF}"
  echo -n "%f%b"
}

_git_status() {
  local BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/*\s*\(.*\)/\1/')

  if [ -n "$BRANCH" ]; then
    echo -n "%F{$1}[%f%F{$2}$BRANCH%f"
    [ -n "$(git status --short)" ] && echo -n " %F{$3}*%f"
    echo -n "%F{$1}]%f"
  fi
}

_shlvl() {
  [ "$SHLVL" -ne 1 ] && echo -n "%F{$1}[%BLVL $SHLVL%b]%f"
}

function _left_prompt() {
  local exit_code="$?"

  subsystemctl is-inside && main_colour="$2" || main_colour="$1"

  local upper_line=""

  upper_line+="$(_git_status $main_colour cyan yellow)"
  [ -n "$upper_line" ] && upper_line+=" "

  if [ "$exit_code" != 0 ]; then
    upper_line+="%F{red}[%B$exit_code%b]%f"
  fi

  if [ -n "$upper_line" ]; then
    echo -n "$upper_line"
    echo
  fi

  echo -n "$(_dir $main_colour) %B%F{$main_colour}|%f%b "
}

function _right_prompt() {
  subsystemctl is-inside && main_colour="$2" || main_colour="$1"
  echo -n "$(_shlvl $main_colour)"
}

setopt prompt_subst
PS1='$(_left_prompt blue green)'
RPS1='$(_right_prompt magenta yellow)'
