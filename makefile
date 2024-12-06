# Génère le fichier README.md
all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "Ce fichier a été généré le : $$(date)" >> README.md
	echo "" >> README.md
	echo "Le script guessinggame.sh contient le nombre suivant de lignes de code :" >> README.md
	wc -l < guessinggame.sh >> README.md
