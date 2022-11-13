#!/bin/bash

toto=$1

if [ -z $toto ]
then
    echo "argument obligatoire"
    exit 1
elif [ $toto == "up" ]
then
    docker-compose up -d
elif [ $toto == "down" ]
then
    docker-compose down
elif [ $toto == "sh" ]
then
    docker-compose exec -u node web /bin/sh
else 
    echo $toto
    echo "argument inconnu"
    exit 1
fi