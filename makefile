README:
	echo "**coursera project guessinggame**" >> README.md
	echo *lines in guessing game:* >> README.md
	wc -l guessinggame.sh >> README.md
	echo *time:* >> README.md
	date >> README.md

CLEAN:
	rm README.md
