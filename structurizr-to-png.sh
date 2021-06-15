#!/bin/bash

ls -altr

/structurizr-to-png/structurizr.sh export -workspace $1 -format plantuml/c4plantuml
java -jar /structurizr-to-png/plantuml.jar *.puml
