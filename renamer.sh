#!/bin/bash

# Function to display usage instructions
usage() {
  echo "Usage: $0 -a <starting_number> -t <filetype>"
  exit 1
}

# Parse command-line arguments
while getopts ":a:t:" opt; do
  case ${opt} in
    a )
      a=$OPTARG
      ;;
    t )
      filetype=$OPTARG
      ;;
    \? )
      echo "Invalid option: -$OPTARG" 1>&2
      usage
      ;;
    : )
      echo "Invalid option: -$OPTARG requires an argument" 1>&2
      usage
      ;;
  esac
done
shift $((OPTIND -1))

# Check if both arguments were provided
if [ -z "$a" ] || [ -z "$filetype" ]; then
  usage
fi

# Rename files
for i in *."$filetype"; do
  new=$(printf "%04d.%s" "$a" "$filetype")
  mv -i -- "$i" "$new"
  let a=a+1
done
