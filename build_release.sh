#!/bin/bash

echo "🧹 Nettoyage du dossier dist/"
rm -rf dist/
mkdir -p dist/vendor

echo "📦 Clonage manuel de moduleA et moduleB dans vendor/"
git clone --depth 1 git@github.com:Valpoli/moduleA.git /tmp/moduleA
git clone --depth 1 git@github.com:Valpoli/moduleB.git /tmp/moduleB

cp -r /tmp/moduleA/moduleA dist/vendor/moduleA
cp -r /tmp/moduleB/moduleB dist/vendor/moduleB

echo "🚚 Copie du code source de module2..."
cp -r module2 dist/

echo "📦 Création de l'archive release_module2.zip..."
cd dist && zip -r ../release_module2.zip .

echo "✅ Build terminé ! Archive prête : release_module2.zip"
