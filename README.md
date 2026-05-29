# 🌍 WherAreU

> Real-time shared location between friends — no sign-up, no account, no hassle.

[![Netlify Status](https://api.netlify.com/api/v1/badges/9f1f8f3b-537e-4130-a286-59980a82cb1a/deploy-status)](https://whereareulocator.netlify.app)
![HTML](https://img.shields.io/badge/HTML-E34F26?style=flat&logo=html5&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black)
![Netlify](https://img.shields.io/badge/Netlify-00C7B7?style=flat&logo=netlify&logoColor=white)

---

## ✨ What is it

**WherAreU** is a PWA (Progressive Web App) that lets two people see each other's location in real time on an interactive map — with distance, direction, timezone info, travel time estimates, and real driving/walking routes.

Built as a personal project for use between friends, no matter where in the world they are.

---

## 🚀 Features

- 📍 Real-time location sharing via device GPS
- 🗺️ Interactive dark map with custom markers
- 📏 Straight-line distance between both points
- 🧭 Bearing in degrees + cardinal direction (both ways)
- 🌐 Estimated timezone for each user, with alert if different
- ✈️ Travel time estimates — plane, car/bus, and walking
- 🛣️ Real driving and walking routes (powered by OpenRouteService)
- 🏙️ Reverse geocoding — shows city name for each user
- 🔑 Room system with 4-letter code — no sign-up needed
- 🔒 Location data auto-deleted when closing the site
- ✕ Leave button to cleanly exit a room
- 📱 Responsive + PWA installable on mobile

---

## 🏗️ Tech stack

| Technology | Use |
|---|---|
| HTML / CSS / JavaScript | Full frontend (single file) |
| [Leaflet.js](https://leafletjs.com/) | Interactive map |
| [Firebase Realtime Database](https://firebase.google.com/) | Real-time location sync |
| [OpenRouteService](https://openrouteservice.org/) | Driving & walking routes |
| [Nominatim / OpenStreetMap](https://nominatim.org/) | Reverse geocoding (city names) |
| [Netlify](https://netlify.com/) | Hosting with HTTPS + auto deploy |
| [CartoDB Dark Matter](https://carto.com/basemaps/) | Dark map tiles |

---

## 📁 Repository structure

```
wherareu/
├── friend-locator.html   # Full app (single-file frontend)
├── config.example.js     # Credentials template (copy as config.js)
├── icon.svg              # App icon (favicon + PWA)
├── manifest.json         # PWA manifest
├── netlify.toml          # Netlify build & deploy config
├── build.sh              # Build script (injects env vars → config.js)
├── .gitignore            # Excludes config.js and dist/
└── README.md             # This file
```

> `config.js` is **not tracked by git** — it contains your real API keys and is listed in `.gitignore`.

---

## ⚙️ Running locally

> Requires a local HTTPS server — browsers block geolocation on `file://`. Use the **Live Server** extension in VS Code.

1. Clone the repo:
   ```bash
   git clone https://github.com/miguelmouralob/wherareu.git
   cd wherareu
   ```

2. Copy the config template and fill in your keys:
   ```bash
   cp config.example.js config.js
   ```

3. Edit `config.js` with your Firebase and OpenRouteService credentials.

4. Open with Live Server.

---

## 🌐 Deploy (Netlify)

The `build.sh` script generates `config.js` from Netlify environment variables at build time — keeping all credentials out of the repository.

### Required environment variables:

| Variable | Description |
|---|---|
| `FIREBASE_API_KEY` | Firebase API key |
| `FIREBASE_AUTH_DOMAIN` | Auth domain |
| `FIREBASE_DATABASE_URL` | Realtime Database URL |
| `FIREBASE_PROJECT_ID` | Project ID |
| `FIREBASE_STORAGE_BUCKET` | Storage bucket |
| `FIREBASE_MESSAGING_SENDER_ID` | Sender ID |
| `FIREBASE_APP_ID` | Web app ID |
| `ORS_API_KEY` | OpenRouteService API key |

Set these in: **Project configuration → Environment variables**

---

## 🔒 Security

- All communication over **HTTPS**
- Rooms identified by random 4-letter codes — no public listing
- Location data **auto-deleted** on page close (`beforeunload` + `pagehide`)
- Firebase rules validate data format and types
- API keys kept out of the repository via `config.js` + `.gitignore`
- No personal data stored beyond name and GPS coordinates

---

## 🗺️ How to use

1. Open [whereareulocator.netlify.app](https://whereareulocator.netlify.app)
2. Enter your name and click **"Create room"**
3. Share the 4-letter code with your friend
4. Your friend opens the same link, enters their name + the code, clicks **"Join room"**
5. Both appear on the map in real time 🎉

---

## 📌 Roadmap

- [ ] "Meet in the middle" button
- [ ] Direct share link with room code embedded in URL
- [ ] Notification when friend connects
- [ ] Route history during session
- [ ] Support for more than 2 users per room
- [ ] Full PWA with offline support

---

## 👨‍💻 Author

Developed by **Miguel Moura** — est. 2026

---

## ⚠️ Disclaimer

This is an **experimental and educational project**, built for personal use between friends.

- No commercial intent or public distribution
- "WherAreU" is an informal identifier with no trademark claim
- No relation to any existing product or service with a similar name
- No third-party data is collected, sold, or shared
- Use at your own risk — no guarantees of availability or accuracy

> *"Built to learn, not to compete."* 😄
