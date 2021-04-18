#!/bin/bash
RED="\e[41m"
GREEN="\e[42m"
BOLD="\e[1m"
DEFAULT="\e[0m"

failed=0
total=0

function check()
{
    (( total++ ))
    if [ "$1" != 0 ] ; then
        (( failed++ ))
        echo "❌ Failed"
        return 1
    else
        echo "✅ Passed"
        return 0
    fi
}

function pattern()
{
    echo -n "➡️  $2 "
    egrep "$3" "$1" &> /dev/null
    check $?
    return $?
}

function compile()
{
    echo "💻 Compiling code..."
    make -j
    check $?
    return $?
}

function fileExist()
{
    if [ -z $1 ] ; then
        echo "❌ filename not provided"
        exit -2
    fi
    if [ ! -f "$1" ] ; then
        echo "❌ $1 does not exist"
        exit -1
    fi
}

function summary()
{
    if [[ "${failed}" -eq 0 ]] ; then
        echo "🍾 All checks have passed"
    else
        echo "❌ ${failed}/${total} failed"
        echo
        echo "If you think this is a bug in the checking script please raise an Issue in this repo and describe the problem"
    fi
    return ${failed}
}
