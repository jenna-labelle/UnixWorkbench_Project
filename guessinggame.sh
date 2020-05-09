echo "Welcome to the guessing game!"

#set variable defining number of files in current directory
#Doesn't include directories
nfiles=$(ls -p | grep -v / | wc -l)

#initiate while loop
#Will need to keep running the loop until the guess == NFiles
count=0
while [[ $count  -lt 1 ]]
do
	#Prompt user to enter their guess
	echo "Guess the number of files in this directory:"
	read response
	if  [[ $response == $nfiles ]]
	then
		echo "You guessed correctly!"
		count=$count+1
	else
		if [[ $response -lt $nfiles ]]
		then
			echo "Your guess was too low!"
		else
			echo "Your guess was too high!"
		fi
	fi
done

	#Save their guess
	
	#Check if guess == NFiles

	#If not: keep count that keeps while loop running
	#If yes:  echo  that they guessed it  + break loop

