echo "Welcome to the guessing game!"

#set variable defining number of files in current directory
#Doesn't include directories
nfiles=$(ls -p | grep -v / | wc -l)

#Function that checks whether response and nfiles match
function check-match {
	if [[ $1 -eq $2 ]]
	then
		echo "You guessed correctly"
		count=$count+1
	elif [[ $1 -gt $2 ]]
	then
		echo "Your guess was too high!"
	elif [[ $1 -lt $2 ]]
	then
		echo "Your guess was too low!"
	fi
}

#initiate while loop
#Will need to keep running the loop until the guess == NFiles
count=0
while [[ $count  -lt 1 ]]
do
	#Prompt user to enter their guess
	echo "Guess the number of files in this directory:"
	read response
	check-match $response $nfiles
done

