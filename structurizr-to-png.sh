#!/bin/bash

/structurizr-to-png/structurizr.sh export -workspace $1 -format plantuml/c4plantuml -output /tmp
java -jar /structurizr-to-png/plantuml.jar /tmp/*.puml -o "${PWD}"
