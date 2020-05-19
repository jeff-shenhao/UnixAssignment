all:



readme:
	touch README.md
	echo "# Project: Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "## guessinggame.sh  a program ask user to guess the number of files in current dir" >> README.md
	echo " ">> README.md
	echo " ">> README.md
	echo 'Date/time of this file generated : ' >> README.md
	date >> README.md
	echo 'Number of lines in guessinggame.sh: ' >> README.md
	cat guessinggame.sh|wc -l >>README.md

clean:
	rm README.md
