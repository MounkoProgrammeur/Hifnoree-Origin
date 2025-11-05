#!/bin/bash
set -e

echo "✅ Installation de pip et des dépendances Python..."
python3 -m ensurepip --upgrade || true
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt

echo "✅ Application des migrations..."
python3 manage.py makemigrations --noinput || true
python3 manage.py migrate --noinput || true

echo "✅ Collecte des fichiers statiques..."
python3 manage.py collectstatic --noinput --clear
