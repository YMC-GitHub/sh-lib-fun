# sh lib fun

## desc

some function for handle fun for ymc shell lib

## apis

- [x] fun_log
- [x] fun_apply
- [x] fun_call
- [x] fun_bind

## feats

- [x] basic `curd` fun

```sh
cat src/index.sh | grep "function " | sed "s/function */- [x] /g"  | sed "s/() *{//g"
```

## how to use for poduction?

```sh
# get the code

# run the index file
# ./src/index.sh

# or import to your sh file
# source /path/to/the/index file

# simple usage
fun_apply "str_eq" "hi hi"
fun_apply "str_eq" "hi c"
fun_bind "str_eq" "hi" "hi"
fun_bind "str_eq" "hi" "c"
```

## how to use for developer?

```sh
# get the code

# run test
./src/test.sh
#2 get some fail test
#./test.sh | grep "it is false"
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
