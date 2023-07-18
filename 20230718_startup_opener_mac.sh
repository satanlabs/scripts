#!/bin/bash

echo "Hello START ~ $(date)"

userResponse='y'

# arg-1 is common-name, arg-2 is the actual-name
function openApp() {
	#echo "arg1 ->$1<-"
	#echo "arg2 ->$2<-"
	printf "open $1 ? INPUT : y/n\n"
	read -r shouldOpen
	#echo "shouldOpen ->$shouldOpen<-"

	if [[ $shouldOpen = $userResponse ]]
		then 
			open -a "/Applications/$2.app" && echo "opened $1"
			#sleep 1
		else
			echo "okay, SKIPPED opening $1"
	fi

	printf "\n====~====~====~====~====~====~====~====\n"
}

openApp "Docker" "Docker"
openApp "GitHub Desktop" "GitHub Desktop"
openApp "Google Chrome" "Google Chrome"
openApp "IntelliJ IDE community" "IntelliJ IDEA CE"
openApp "Microsoft OneNote" "Microsoft OneNote"
openApp "Microsoft Teams" "Microsoft Teams"
openApp "Microsoft Outlook" "Microsoft Outlook"
openApp "Sublime Text" "Sublime Text"
#openApp "__TODO__" "__TODO__"

exit 0
