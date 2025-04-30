#!/bin/bash

echo "🧹 Nettoyage du dossier dist/"
rm -rf dist/
mkdir -p dist/vendor

echo "📦 Vendorisation des dépendances..."
pip install --target=dist/vendor -r requirements.txt

echo "🚚 Copie du code de module2..."
cp -r module2 dist/

echo "📦 Création de l'archive release_module2.zip..."
cd dist && zip -r ../release_module2.zip .

echo "✅ Build terminé ! Archive prête : release_module2.zip"
