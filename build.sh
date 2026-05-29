#!/bin/bash
mkdir -p dist

# Gera o config.js com as keys das env vars do Netlify
cat > dist/config.js << CONFIGEOF
export const FIREBASE_CONFIG = {
  apiKey: "${FIREBASE_API_KEY}",
  authDomain: "${FIREBASE_AUTH_DOMAIN}",
  databaseURL: "${FIREBASE_DATABASE_URL}",
  projectId: "${FIREBASE_PROJECT_ID}",
  storageBucket: "${FIREBASE_STORAGE_BUCKET}",
  messagingSenderId: "${FIREBASE_MESSAGING_SENDER_ID}",
  appId: "${FIREBASE_APP_ID}"
};

export const ORS_API_KEY = "${ORS_API_KEY}";
CONFIGEOF

cp friend-locator.html dist/index.html
cp icon.svg dist/icon.svg
cp manifest.json dist/manifest.json

echo "✅ Build concluído."
