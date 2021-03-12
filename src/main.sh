#!/bin/bash



main () {
  if [ -z $1 ] || [ -z $2 ]
  then
    echo "Missing parameters"
  elif (( $1 == "-d" ))
  then
    ~/repo/newrepo/src/config/default.sh $2 $3
  elif (( $1 == "-s" ))
  then
    ~/repo/newrepo/src/config/standard.sh $2 $3
  fi
}

main $1 $2 $3