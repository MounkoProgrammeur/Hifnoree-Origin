#!/bin/bash 

# Compilation du projet 
echo  "Compilation du projet..."
 python3.9 -m pip install -r requirements.txt 

echo  "Création des migrations..."
 python3.9 manage.py makemigrations --noinput 
python3.9 manage.py migrate --noinput 

echo  "Collecte des dépendances statiques..."
 python3.9 manage.py collectstatic --noinput --clear