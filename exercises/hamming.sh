#!/bin/bash


main(){

dna1=$1
dna2=$2

if [[ $# -ne 2 ]]
then
  echo 'Usage: hamming.sh <string1> <string2>'
  exit 128 # exit code with no arguments
fi

if [[ ${#dna1} -ne ${#dna2} ]]
then
  echo 'strands must be of equal length'
  exit 1 # exit code for general errors
fi

diff_count=0
dna_len=${#dna1} # extract string length
for (( i=0; i<$dna_len; i++ )) # c-loop style
do
  if [[ "${dna1:i:1}" != "${dna2:i:1}" ]] # note to embrace expression inside double quotes
  then
    diff_count=$(( diff_count + 1))
  fi
done

echo "${diff_count}"

}

main "$@"
