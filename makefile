README.md:
	touch README.md
	echo "# Guessing Game" >> README.md
	echo "## Unix Workbench Project" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessing game program:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "" >> README.md
	echo "make was run on $$(date)" >> README.md
