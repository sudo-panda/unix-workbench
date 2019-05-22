#!/bin/bash
function no_of_files() {
	FILES=$(ls -p | grep -v / | wc -l)
}

no_of_files
TRIES=1

while  [ $TRIES -ne -1 ]
do
	read -p "Guess the no of files in the current directory: " GUESS
	if [ $FILES -eq $GUESS ]
	then
		echo "CORRECT!! Congrats on getting the right guess in ${TRIES} tries"
		TRIES=-1
	elif [ $FILES -gt $GUESS ] 
	then
		echo "You guessed too low"
		TRIES=$((TRIES + 1))
	else
		echo "You guessed too high"
		TRIES=$((TRIES + 1))
	fi
	echo ""
done
		