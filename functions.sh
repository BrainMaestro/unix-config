function fd() {
  find . -iname "*$1*" ${@:2}
}