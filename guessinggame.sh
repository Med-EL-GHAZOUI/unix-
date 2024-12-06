#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
count_files() {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire
file_count=$(count_files)

# Boucle principale
while true; do
    echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
    read guess

    if [[ $guess -eq $file_count ]]; then
        echo "Félicitations ! Vous avez deviné correctement."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Trop bas ! Essayez encore."
    else
        echo "Trop haut ! Essayez encore."
    fi
done
