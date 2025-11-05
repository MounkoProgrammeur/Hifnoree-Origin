#!/bin/bash
set -e

echo "✅ Installation de pip et mise à jour..."
python3 -m ensurepip --upgrade || true
python3 -m pip install --upgrade pip setuptools wheel

echo "✅ Installation des dépendances Python..."
python3 -m pip install -r requirements.txt

echo "✅ Application des migrations..."
python3 manage.py makemigrations --noinput || true
python3 manage.py migrate --noinput || true

echo "✅ Collecte des fichiers statiques..."
python3 manage.py collectstatic --noinput --clear
