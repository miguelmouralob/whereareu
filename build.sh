#!/bin/bash
# Script de build — substitui os placeholders pelas variáveis de ambiente do Netlify

cp friend-locator.html dist/index.html

sed -i "s|FIREBASE_API_KEY|$FIREBASE_API_KEY|g" dist/index.html
sed -i "s|FIREBASE_AUTH_DOMAIN|$FIREBASE_AUTH_DOMAIN|g" dist/index.html
sed -i "s|FIREBASE_DATABASE_URL|$FIREBASE_DATABASE_URL|g" dist/index.html
sed -i "s|FIREBASE_PROJECT_ID|$FIREBASE_PROJECT_ID|g" dist/index.html
sed -i "s|FIREBASE_STORAGE_BUCKET|$FIREBASE_STORAGE_BUCKET|g" dist/index.html
sed -i "s|FIREBASE_MESSAGING_SENDER_ID|$FIREBASE_MESSAGING_SENDER_ID|g" dist/index.html
sed -i "s|FIREBASE_APP_ID|$FIREBASE_APP_ID|g" dist/index.html

echo "✅ Build concluído — credenciais injetadas com sucesso."
