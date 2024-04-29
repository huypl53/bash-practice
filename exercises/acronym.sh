#! /usr/bin/bash

acr=''
get_acronym(){
    if [[ "${#1}" -eq 1 ]]
    then
        echo  "${1^}"
        return 0
    fi

    string=" $1"
    # string="$( echo $string | sed -e 's/[^a-Z]/ /g ')"    # echo "acronym of $string"
    string="${string//\'/}"
    string="${string//[^a-zA-Z]/ }"    # echo "acronym of $string"
    pre_char=''
    for ((i=0; i<"${#string}"; i++));
    do
        current_char="${string:i:1}"
        if [[ "${pre_char}" == " " && "${current_char}" != "${pre_char}" ]]
        then
            acr="${acr}${current_char}"
        fi
        pre_char="${current_char}"
    done

    # echo "acr: ${acr}"
}

main () {

    input_string=$1
    # echo "input string: $input_string"
    get_acronym "$input_string"
    upper_acr="${acr^^}"
    echo "${upper_acr}"
}

main "$*"
