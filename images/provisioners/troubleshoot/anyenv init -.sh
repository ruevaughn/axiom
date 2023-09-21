 anyenv init -
++ __bp_preexec_invoke_exec -x
++ __bp_last_argument_prev_command=-x
++ ((  __bp_inside_preexec > 0  ))
++ local __bp_inside_preexec=1
++ [[ ! -t 1 ]]
++ [[ -n '' ]]
++ [[ -z on ]]
++ [[ 0 -eq 0 ]]
++ __bp_preexec_interactive_mode=
++ __bp_in_prompt_command 'anyenv init -'
++ local prompt_command_array 'IFS=
;'
++ read -rd '' -a prompt_command_array
++ local trimmed_arg
++ __bp_trim_whitespace trimmed_arg 'anyenv init -'
++ local var=trimmed_arg 'text=anyenv init -'
++ text='anyenv init -'
++ text='anyenv init -'
++ printf -v trimmed_arg %s 'anyenv init -'
++ local command trimmed_command
++ for command in "${prompt_command_array[@]:-}"
++ __bp_trim_whitespace trimmed_command __bp_precmd_invoke_cmd
++ local var=trimmed_command text=__bp_precmd_invoke_cmd
++ text=__bp_precmd_invoke_cmd
++ text=__bp_precmd_invoke_cmd
++ printf -v trimmed_command %s __bp_precmd_invoke_cmd
++ [[ __bp_precmd_invoke_cmd == \a\n\y\e\n\v\ \i\n\i\t\ \- ]]
++ for command in "${prompt_command_array[@]:-}"
++ __bp_trim_whitespace trimmed_command 'history -a'
++ local var=trimmed_command 'text=history -a'
++ text='history -a'
++ text='history -a'
++ printf -v trimmed_command %s 'history -a'
++ [[ history -a == \a\n\y\e\n\v\ \i\n\i\t\ \- ]]
++ for command in "${prompt_command_array[@]:-}"
++ __bp_trim_whitespace trimmed_command _omb_util_prompt_command_hook
++ local var=trimmed_command text=_omb_util_prompt_command_hook
++ text=_omb_util_prompt_command_hook
++ text=_omb_util_prompt_command_hook
++ printf -v trimmed_command %s _omb_util_prompt_command_hook
++ [[ _omb_util_prompt_command_hook == \a\n\y\e\n\v\ \i\n\i\t\ \- ]]
++ for command in "${prompt_command_array[@]:-}"
++ __bp_trim_whitespace trimmed_command :
++ local var=trimmed_command text=:
++ text=:
++ text=:
++ printf -v trimmed_command %s :
++ [[ : == \a\n\y\e\n\v\ \i\n\i\t\ \- ]]
++ for command in "${prompt_command_array[@]:-}"
++ __bp_trim_whitespace trimmed_command __bp_interactive_mode
++ local var=trimmed_command text=__bp_interactive_mode
++ text=__bp_interactive_mode
++ text=__bp_interactive_mode
++ printf -v trimmed_command %s __bp_interactive_mode
++ [[ __bp_interactive_mode == \a\n\y\e\n\v\ \i\n\i\t\ \- ]]
++ return 1
++ local this_command
+++ export LC_ALL=C
+++ LC_ALL=C
+++ sed '1 s/^ *[0-9][0-9]*[* ] //'
+++ HISTTIMEFORMAT=
+++ builtin history 1
++ this_command='anyenv init -'
++ [[ -z anyenv init - ]]
++ local preexec_function
++ local preexec_function_ret_value
++ local preexec_ret_value=0
++ for preexec_function in "${preexec_functions[@]:-}"
++ type -t preexec
++ __bp_set_ret_value 0 -x
++ return 0
+ anyenv init -
+ typeset command
+ command=init
+ '[' 2 -gt 0 ']'
+ shift
+ command anyenv init -
source "/mnt/storage/root/.anyenv/libexec/../completions/anyenv.bash"
anyenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi
  command anyenv "$command" "$@"
}
export GOENV_ROOT="/root/.anyenv/envs/goenv"
export PATH="/root/.anyenv/envs/goenv/bin:$PATH"
export GOENV_SHELL=bash
export GOENV_ROOT=/root/.anyenv/envs/goenv
if [ "${PATH#*$GOENV_ROOT/shims}" = "${PATH}" ]; then
  export PATH="$PATH:$GOENV_ROOT/shims"
fi
source '/root/.anyenv/envs/goenv/libexec/../completions/goenv.bash'
command goenv rehash 2>/dev/null
goenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(goenv "sh-$command" "$@")";;
  *)
    command goenv "$command" "$@";;
  esac
}
goenv rehash --only-manage-paths
export NODENV_ROOT="/root/.anyenv/envs/nodenv"
export PATH="/root/.anyenv/envs/nodenv/bin:$PATH"
export PATH="/root/.anyenv/envs/nodenv/shims:${PATH}"
export NODENV_SHELL=bash
source '/root/.anyenv/envs/nodenv/libexec/../completions/nodenv.bash'
command nodenv rehash 2>/dev/null
nodenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(nodenv "sh-$command" "$@")";;
  *)
    command nodenv "$command" "$@";;
  esac
}
export PYENV_ROOT="/root/.anyenv/envs/pyenv"
export PATH="/root/.anyenv/envs/pyenv/bin:$PATH"
PATH="$(bash --norc -ec 'IFS=:; paths=($PATH);
for i in ${!paths[@]}; do
if [[ ${paths[i]} == "''/root/.anyenv/envs/pyenv/shims''" ]]; then unset '\''paths[i]'\'';
fi; done;
echo "${paths[*]}"')"
export PATH="/root/.anyenv/envs/pyenv/shims:${PATH}"
export PYENV_SHELL=bash
source '/root/.anyenv/envs/pyenv/libexec/../completions/pyenv.bash'
command pyenv rehash 2>/dev/null
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  activate|deactivate|rehash|shell)
    eval "$(pyenv "sh-$command" "$@")"
    ;;
  *)
    command pyenv "$command" "$@"
    ;;
  esac
}
+++ __bp_preexec_invoke_exec -
+++ __bp_last_argument_prev_command=-
+++ ((  __bp_inside_preexec > 0  ))
+++ local __bp_inside_preexec=1
+++ [[ ! -t 1 ]]
+++ [[ -n '' ]]
+++ [[ -z '' ]]
+++ return
++ __bp_precmd_invoke_cmd
++ __bp_last_ret_value=0
++ BP_PIPESTATUS=("${PIPESTATUS[@]}")
++ ((  __bp_inside_precmd > 0  ))
++ local __bp_inside_precmd=1
++ local precmd_function
++ for precmd_function in "${precmd_functions[@]}"
++ type -t precmd
++ __bp_set_ret_value 0
++ return 0
+++ __bp_preexec_invoke_exec __bp_precmd_invoke_cmd
+++ __bp_last_argument_prev_command=__bp_precmd_invoke_cmd
+++ ((  __bp_inside_preexec > 0  ))
+++ local __bp_inside_preexec=1
+++ [[ ! -t 1 ]]
+++ [[ -n '' ]]
+++ [[ -z '' ]]
+++ return
++ history -a
+++ __bp_preexec_invoke_exec -a
+++ __bp_last_argument_prev_command=-a
+++ ((  __bp_inside_preexec > 0  ))
+++ local __bp_inside_preexec=1
+++ [[ ! -t 1 ]]
+++ [[ -n '' ]]
+++ [[ -z '' ]]
+++ return
++ _omb_util_prompt_command_hook
++ local status=0 lastarg=-a hook
++ for hook in "${_omb_util_prompt_command[@]}"
++ _omb_util_setexit 0 -a
++ return 0
++ eval -- 'history -a'
+++ history -a
++ for hook in "${_omb_util_prompt_command[@]}"
++ _omb_util_setexit 0 -a
++ return 0
++ eval -- _omb_deprecate_const__sync
+++ _omb_deprecate_const__sync
+++ local __index __old __curval __compaction=
++ for hook in "${_omb_util_prompt_command[@]}"
++ _omb_util_setexit 0 -a
++ return 0
++ eval -- _omb_theme_PROMPT_COMMAND
+++ _omb_theme_PROMPT_COMMAND
+++ local RETVAL=0
+++ local PRIGHT=
+++ local CURRENT_BG=NONE
+++++ text_effect reset
+++++ case "$1" in
+++++ echo 0
++++ ansi_single 0
++++ echo -ne '\[\033[0m\]'
+++ local 'PR=\[\]'
+++ build_prompt
+++ [[ ! -z '' ]]
+++ prompt_status
+++ local symbols
+++ symbols=()
+++ [[ 0 -ne 0 ]]
+++ [[ 0 -eq 0 ]]
+++++ fg_color yellow
+++++ case "$1" in
+++++ echo 33
++++ ansi_single 33
++++ echo -ne '\[\033[33m\]'
+++ symbols+='\[\]⚡'
++++ wc -l -l
++++ jobs -l
+++ [[ 0 -gt 0 ]]
+++ [[ -n \[\]⚡ ]]
+++ prompt_segment black default '\[\]⚡'
+++ local bg fg
+++ local -a codes
+++ debug 'Prompting black default \[\]⚡'
+++ [[ 0 -ne 0 ]]
+++ codes=("${codes[@]}" $(text_effect reset))
++++ text_effect reset
++++ case "$1" in
++++ echo 0
+++ [[ -n black ]]
++++ bg_color black
++++ case "$1" in
++++ echo 40
+++ bg=40
+++ codes=("${codes[@]}" $bg)
+++ debug 'Added 40 as background to codes'
+++ [[ 0 -ne 0 ]]
+++ [[ -n default ]]
++++ fg_color default
++++ case "$1" in
+++ fg=
+++ codes=("${codes[@]}" $fg)
+++ debug 'Added  as foreground to codes'
+++ [[ 0 -ne 0 ]]
+++ debug 'Codes: '
+++ [[ 0 -ne 0 ]]
+++ [[ NONE != NONE ]]
+++ debug 'no current BG, codes is 0[@]'
+++ [[ 0 -ne 0 ]]
++++ ansi 'codes[@]'
++++ local seq
++++ mycodes=('0' '40')
++++ local -a mycodes
++++ debug 'ansi: 0' '40 all: codes[@] aka 0' 40
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 2 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 2 ))
++++ [[ -n 0 ]]
++++ seq='0;'
++++ seq='0;40'
++++ (( i++ ))
++++ (( i < 2 ))
++++ debug 'ansi debug:' '\\[\\033[0;40m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0;40m\]'
+++ PR='\[\]\[\] '
+++ CURRENT_BG=black
+++ [[ -n \[\]⚡ ]]
+++ PR='\[\]\[\] \[\]⚡'
+++ [[ -z '' ]]
+++ prompt_histdt
+++ prompt_segment black default '\!'
+++ local bg fg
+++ local -a codes
+++ debug 'Prompting black default \!'
+++ [[ 0 -ne 0 ]]
+++ codes=("${codes[@]}" $(text_effect reset))
++++ text_effect reset
++++ case "$1" in
++++ echo 0
+++ [[ -n black ]]
++++ bg_color black
++++ case "$1" in
++++ echo 40
+++ bg=40
+++ codes=("${codes[@]}" $bg)
+++ debug 'Added 40 as background to codes'
+++ [[ 0 -ne 0 ]]
+++ [[ -n default ]]
++++ fg_color default
++++ case "$1" in
+++ fg=
+++ codes=("${codes[@]}" $fg)
+++ debug 'Added  as foreground to codes'
+++ [[ 0 -ne 0 ]]
+++ debug 'Codes: '
+++ [[ 0 -ne 0 ]]
+++ [[ black != NONE ]]
+++ [[ black != black ]]
+++ debug 'no current BG, codes is 0[@]'
+++ [[ 0 -ne 0 ]]
++++ ansi 'codes[@]'
++++ local seq
++++ mycodes=('0' '40')
++++ local -a mycodes
++++ debug 'ansi: 0' '40 all: codes[@] aka 0' 40
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 2 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 2 ))
++++ [[ -n 0 ]]
++++ seq='0;'
++++ seq='0;40'
++++ (( i++ ))
++++ (( i < 2 ))
++++ debug 'ansi debug:' '\\[\\033[0;40m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0;40m\]'
+++ PR='\[\]\[\] \[\]⚡\[\] '
+++ CURRENT_BG=black
+++ [[ -n \! ]]
+++ PR='\[\]\[\] \[\]⚡\[\] \!'
+++ [[ -n true ]]
+++ prompt_virtualenv
+++ [[ '' == 1 ]]
+++ [[ -d '' ]]
+++ prompt_condaenv
+++ [[ -d '' ]]
+++ prompt_dir
+++ prompt_segment blue black '\W'
+++ local bg fg
+++ local -a codes
+++ debug 'Prompting blue black \W'
+++ [[ 0 -ne 0 ]]
+++ codes=("${codes[@]}" $(text_effect reset))
++++ text_effect reset
++++ case "$1" in
++++ echo 0
+++ [[ -n blue ]]
++++ bg_color blue
++++ case "$1" in
++++ echo 44
+++ bg=44
+++ codes=("${codes[@]}" $bg)
+++ debug 'Added 44 as background to codes'
+++ [[ 0 -ne 0 ]]
+++ [[ -n black ]]
++++ fg_color black
++++ case "$1" in
++++ echo 30
+++ fg=30
+++ codes=("${codes[@]}" $fg)
+++ debug 'Added 30 as foreground to codes'
+++ [[ 0 -ne 0 ]]
+++ debug 'Codes: '
+++ [[ 0 -ne 0 ]]
+++ [[ black != NONE ]]
+++ [[ blue != black ]]
++++ fg_color black
++++ case "$1" in
++++ echo 30
++++ bg_color blue
++++ case "$1" in
++++ echo 44
+++ intermediate=('30' '44')
+++ local -a intermediate
++++ ansi 'intermediate[@]'
++++ local seq
++++ mycodes=('30' '44')
++++ local -a mycodes
++++ debug 'ansi: 30' '44 all: intermediate[@] aka 30' 44
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 2 ))
++++ [[ -n '' ]]
++++ seq=30
++++ (( i++ ))
++++ (( i < 2 ))
++++ [[ -n 30 ]]
++++ seq='30;'
++++ seq='30;44'
++++ (( i++ ))
++++ (( i < 2 ))
++++ debug 'ansi debug:' '\\[\\033[30;44m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[30;44m\]'
+++ debug 'pre prompt ' '\[\]'
+++ [[ 0 -ne 0 ]]
++++ ansi 'intermediate[@]'
++++ local seq
++++ mycodes=('30' '44')
++++ local -a mycodes
++++ debug 'ansi: 30' '44 all: intermediate[@] aka 30' 44
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 2 ))
++++ [[ -n '' ]]
++++ seq=30
++++ (( i++ ))
++++ (( i < 2 ))
++++ [[ -n 30 ]]
++++ seq='30;'
++++ seq='30;44'
++++ (( i++ ))
++++ (( i < 2 ))
++++ debug 'ansi debug:' '\\[\\033[30;44m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[30;44m\]'
+++ PR='\[\]\[\] \[\]⚡\[\] \! \[\]'
++++ ansi 'codes[@]'
++++ local seq
++++ mycodes=('0' '44' '30')
++++ local -a mycodes
++++ debug 'ansi: 0' 44 '30 all: codes[@] aka 0' 44 30
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 3 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 3 ))
++++ [[ -n 0 ]]
++++ seq='0;'
++++ seq='0;44'
++++ (( i++ ))
++++ (( i < 3 ))
++++ [[ -n 0;44 ]]
++++ seq='0;44;'
++++ seq='0;44;30'
++++ (( i++ ))
++++ (( i < 3 ))
++++ debug 'ansi debug:' '\\[\\033[0;44;30m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0;44;30m\]'
+++ debug 'post prompt ' '\[\]'
+++ [[ 0 -ne 0 ]]
++++ ansi 'codes[@]'
++++ local seq
++++ mycodes=('0' '44' '30')
++++ local -a mycodes
++++ debug 'ansi: 0' 44 '30 all: codes[@] aka 0' 44 30
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 3 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 3 ))
++++ [[ -n 0 ]]
++++ seq='0;'
++++ seq='0;44'
++++ (( i++ ))
++++ (( i < 3 ))
++++ [[ -n 0;44 ]]
++++ seq='0;44;'
++++ seq='0;44;30'
++++ (( i++ ))
++++ (( i < 3 ))
++++ debug 'ansi debug:' '\\[\\033[0;44;30m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0;44;30m\]'
+++ PR='\[\]\[\] \[\]⚡\[\] \! \[\]\[\] '
+++ CURRENT_BG=blue
+++ [[ -n \W ]]
+++ PR='\[\]\[\] \[\]⚡\[\] \! \[\]\[\] \W'
+++ prompt_git
+++ local ref dirty
+++ command git rev-parse --is-inside-work-tree
+++ prompt_end
+++ [[ -n blue ]]
++++ text_effect reset
++++ case "$1" in
++++ echo 0
++++ fg_color blue
++++ case "$1" in
++++ echo 34
+++ codes=('0' '34')
+++ local -a codes
++++ ansi 'codes[@]'
++++ local seq
++++ mycodes=('0' '34')
++++ local -a mycodes
++++ debug 'ansi: 0' '34 all: codes[@] aka 0' 34
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 2 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 2 ))
++++ [[ -n 0 ]]
++++ seq='0;'
++++ seq='0;34'
++++ (( i++ ))
++++ (( i < 2 ))
++++ debug 'ansi debug:' '\\[\\033[0;34m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0;34m\]'
+++ PR='\[\]\[\] \[\]⚡\[\] \! \[\]\[\] \W \[\]'
++++ text_effect reset
++++ case "$1" in
++++ echo 0
+++ reset=('0')
+++ local -a reset
++++ ansi 'reset[@]'
++++ local seq
++++ mycodes=('0')
++++ local -a mycodes
++++ debug 'ansi: 0 all: reset[@] aka 0'
++++ [[ 0 -ne 0 ]]
++++ seq=
++++ local i
++++ (( i = 0 ))
++++ (( i < 1 ))
++++ [[ -n '' ]]
++++ seq=0
++++ (( i++ ))
++++ (( i < 1 ))
++++ debug 'ansi debug:' '\\[\\033[0m\\]'
++++ [[ 0 -ne 0 ]]
++++ echo -ne '\[\033[0m\]'
+++ PR='\[\]\[\] \[\]⚡\[\] \! \[\]\[\] \W \[\] \[\]'
+++ CURRENT_BG=
+++ PS1=
++++ shuf -i 1-20 -n 1 --random-source=/dev/urandom
+++ ((  13 == 1  ))
++++ date +%H
+++ PSDATE=05
++++ date +%H:%M:%S
+++ PS1+='05:00:04 '
+++ PS1+='\[\]\[\] \[\]⚡\[\] \! \[\]\[\] \W \[\] \[\]'
++ _omb_util_setexit 0
++ return 0
+++ __bp_preexec_invoke_exec _omb_util_prompt_command_hook
+++ __bp_last_argument_prev_command=_omb_util_prompt_command_hook
+++ ((  __bp_inside_preexec > 0  ))
+++ local __bp_inside_preexec=1
+++ [[ ! -t 1 ]]
+++ [[ -n '' ]]
+++ [[ -z '' ]]
+++ return
++ :
+++ __bp_preexec_invoke_exec -
+++ __bp_last_argument_prev_command=-
+++ ((  __bp_inside_preexec > 0  ))
+++ local __bp_inside_preexec=1
+++ [[ ! -t 1 ]]
+++ [[ -n '' ]]
+++ [[ -z '' ]]
+++ return
++ __bp_interactive_mode
++ __bp_preexec_interactive_mode=on