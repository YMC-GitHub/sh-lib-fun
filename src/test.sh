#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)

source "$THIS_FILE_PATH/index.sh"
source "$THIS_FILE_PATH/sh-lib-time-cost.sh"

function str_eq() {
  local a=
  local b=
  [ -n "$1" ] && a="$1"
  [ -n "$2" ] && b="$2"

  if [ "$a" = "$b" ]; then
    echo "true"
  else
    echo "false"
  fi
}


recordTime "fun.curd.cost"

echo "with fun name fun_log"
fun_call "" "hi"
fun_apply "" "hi xx cc"
fun_bind "fun_log" "1" "2" "3"

echo "with fun name str_eq"

#fun_call "str_eq" "hi hi"
fun_apply "str_eq" "hi hi"
fun_apply "str_eq" "hi c"
fun_bind "str_eq" "hi" "hi"
fun_bind "str_eq" "hi" "c"
caculateTime "fun.curd.cost"

## file-usage
# ./src/test.sh
