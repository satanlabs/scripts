#!/bin/bash

## this script will run automatically IFF openAutomatically = YES 
echo "Hello, START ~ $(date)"

for ARGUMENT in "$@"
do
   KEY=$(echo $ARGUMENT | cut -f1 -d=)

   KEY_LENGTH=${#KEY}
   VALUE="${ARGUMENT:$KEY_LENGTH+1}"

   export "$KEY"="$VALUE"
done

openAutomatically=$OPEN_AUTOMATICALLY
echo "openAutomatically ? ->$openAutomatically<-"

userResponseYes='y'
userResponseNo='n'

# arg-1 is common-name, arg-2 is the actual-name
function openApp() {
	#echo "arg1 ->$1<-"
	#echo "arg2 ->$2<-"
	shouldOpen=$userResponseNo
	if [[ $openAutomatically = 'YES' ]]
		then
			shouldOpen=$userResponseYes
			echo "shouldOpen ->$shouldOpen<-"
		else
			printf "open $1 ? INPUT : y/n\n"
			read -r shouldOpen
			echo "shouldOpen ->$shouldOpen<-"
	fi

	if [[ $shouldOpen = $userResponseYes ]]
		then 
			open -a "/Applications/$2.app" && echo " ✅ ✅ ✅ opened $1 ✅ ✅ ✅ "
			sleep 1
		else
			echo "⏭️ ⏭️ ⏭️ okay, SKIPPED opening $1 ⏭️ ⏭️ ⏭️"
	fi

	printf "\n====~====~====~====~====~====~====~====\n"
}


openApp "Docker" "Docker"
openApp "GitHub Desktop" "GitHub Desktop"
openApp "Google Chrome" "Google Chrome"
openApp "IntelliJ IDE community" "IntelliJ IDEA CE"
openApp "Microsoft OneNote" "Microsoft OneNote"
openApp "Microsoft Teams" "Microsoft Teams classic"
openApp "Microsoft Outlook" "Microsoft Outlook"
openApp "Sublime Text" "Sublime Text"
# openApp "Safari" "Safari"
# openApp "__USER_FACING_NAME__" "__ACTUAL_APP_FILENAME_IN_MAC__"

echo "Hello, STOP ~ $(date)"
exit 0
