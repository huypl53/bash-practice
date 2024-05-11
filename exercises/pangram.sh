#!/usr/bin/bash

letters='abcdefghijklmnopqrstuvwxyz'

main() {
  input_string="${1,,}" # Lower case input string
  # echo "letters: ${letters}, input_string: ${input_string}"
  len_str="${#input_string}"
  # echo "string length: ${len_str}"
  for (( i=0;i<"${len_str}";i++ ))
  do
    # echo "c: ${input_string:i:1}"
    c="${input_string:i:1}"
    letters="${letters//$c/}"
    # echo "c: ${c}, letters: ${letters}"
  done
  if [[ "${#letters}" -eq 0 ]]
  then
    echo 'true'
  else
    echo 'false'
  fi

}

main "$@"
