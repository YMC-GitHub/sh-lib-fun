#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)


function fun_log() {
  #echo "$1"
  echo "$@"
}
# 作用: 调用某一函数
# 参数：函数名字，函数参数
# 示例：fun_apply "" "hi xx cc"
# 备注：第二个参数作为所传名字函数的所有参数
function fun_apply() {
  local fun_name=
  local fun_args=
  fun_name="fun_log"
  [ -n "$1" ] && fun_name="$1"
  [ -n "$2" ] && fun_args="$2"
  shCode=$(
    cat <<EOF
echo \$($fun_name $fun_args)
EOF
  )
  #echo "$shCode"
  eval "$shCode"
}


# 作用: 调用某一函数
# 参数：函数名字，函数参数
# 示例：fun_call "" "hi xx cc"
# 备注：第二个参数作为所传名字函数的第一个参数
function fun_call() {
  local fun_name=
  local fun_args=
  fun_name="fun_log"
  [ -n "$1" ] && arr_name="$1"
  [ -n "$2" ] && fun_args="$2"
  shCode=$(
    cat <<EOF
echo \$($fun_name "$fun_args")
EOF
  )
  #echo "$shCode"
  eval "$shCode"
}

# 作用: 调用某一函数
# 参数：函数名字，函数参数1,...函数参数N
# 示例：fun_call "fun_log" "hi" "xx" "cc"
# 备注：第二至N个参数作为所传名字函数的第一个至N-1参数
function fun_bind() {
  shCode=$(
    cat <<EOF
echo \$($@)
EOF
  )
  #echo "$shCode"
  eval "$shCode"
}

## function usage
#
#fun_call "" "hi"
#fun_apply "" "hi xx cc"
#fun_bind "fun_log" "1" "2" "3"

## file usage
# src/index.sh
