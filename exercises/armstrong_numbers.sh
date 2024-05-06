#!/usr/bin/bash


main() {
  num_string=$1
  # echo "num string: ${num_string}"

  count=0
  exp="${#num_string}"
  for (( i=0; i<"${#num_string}"; i++ ))
  do
    num="${num_string:i:1}"
    # echo "${num}"
    count=$(( count + num**exp ))
    # echo "${count}"
  done

  if [[ count -eq num_string ]]
  then
    echo "true"
    # exit 0
  else
    echo "false"
    # exit 1
  fi
  
}


main "$@"
