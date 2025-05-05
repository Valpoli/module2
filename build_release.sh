#!/bin/bash

set -e  # Arrête le script en cas d'erreur

echo "🧹 Nettoyage du dossier dist/"
rm -rf dist/
mkdir -p dist/

echo "📦 Clonage manuel de moduleA et moduleB dans dist/"
rm -rf /tmp/moduleA /tmp/moduleB
git clone --depth 1 git@github.com:Valpoli/moduleA.git /tmp/moduleA
git clone --depth 1 git@github.com:Valpoli/moduleB.git /tmp/moduleB

echo "📁 Copie sans .git des modules"
rsync -a --exclude='.git' /tmp/moduleA/ dist/moduleA/
rsync -a --exclude='.git' /tmp/moduleB/ dist/moduleB/

echo "🚚 Copie du code source de module2..."
cp -r module2 dist/

echo "📦 Création de l'archive release_module2.zip..."
cd dist && zip -r ../release_module2.zip . -x '*.git*' '*.pyc' '__pycache__/*'

echo "✅ Build terminé ! Archive prête : release_module2.zip"
