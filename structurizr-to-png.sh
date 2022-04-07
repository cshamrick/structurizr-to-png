#!/bin/bash

usage="Options:
  --workspace=<workspace>
  --format=<format>"

# defaults
format=plantuml

# map args to vars
while (( ${#} > 0 )); do
  case "${1}" in
    ( '-workspace='* ) workspace="${1#*=}" ;;
    ( '-format='* ) format="${1#*=}" ;;
    ( * ) echo "$usage"; exit 1;;
  esac
  shift
done

# validate required args/vars
if [ -z "$workspace" ]; then
  echo "$usage"
  exit 1
fi

/structurizr-to-png/structurizr.sh export -workspace "$workspace" -format "$format" -output /tmp
java -jar /structurizr-to-png/plantuml.jar /tmp/*.puml -o "${PWD}"
