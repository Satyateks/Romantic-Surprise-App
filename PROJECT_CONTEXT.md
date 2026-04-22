# 💖 Romantic Surprise App — Project Context & System Overview

## 🎯 Project Goal

This project is a **Flutter-based personalized romantic surprise application** designed to create an **emotional, story-driven experience** using:

- Photos
- Videos
- Quotes / messages
- Interactive UI elements

The app is not just a gallery — it is a **guided emotional journey**.

---

## 🧠 Core Concept

The application is structured as a **multi-screen narrative flow**, where each screen represents a stage in a relationship/memory journey.

It simulates a **digital love letter / memory timeline**.

---

## 🧱 Tech Stack

- Flutter (UI)
- Dart
- Material UI (custom themed)
- Local assets (images, videos, audio)

Planned:
- Firebase (dynamic content)
- AI-generated messages
- Animations (Lottie)

---

## 📱 Current App Flow (IMPLEMENTED)

### 1. Welcome Screen (`/`)
- Entry point of the app
- Displays:
  - Romantic headline
  - Subtitle
  - CTA button: **"Open Surprise"**
- Purpose:
  - Create curiosity
  - Start emotional journey

➡️ Navigates to: `/gallery`

---

### 2. Gallery Screen (`/gallery`)
- Displays:
  - Staggered image layout (memories)
  - Romantic UI cards
- Purpose:
  - Show visual memories
  - Introduce storytelling

➡️ Navigates to: `/cherished`

---

### 3. Cherished Moments Screen (`/cherished`)
- Displays:
  - Video-style cards
  - Play button overlays
  - Featured memories
- Purpose:
  - Bring motion & emotion via video-like UI

➡️ Navigates to: `/sent-love`

---

### 4. Sent With Love Screen (`/sent-love`)
- Displays:
  - Personal quotes
  - Message cards
  - Voice-note style UI
  - Memory banner
- Purpose:
  - Emotional personalization
  - Deep connection layer

➡️ Navigates to: `/for-you`

---

### 5. For You, My Love Screen (`/for-you`)
- Displays:
  - Featured memory
  - Romantic quotes
  - Mini gallery
  - Video tiles
  - Secret surprise card
- Purpose:
  - Peak emotional storytelling
  - Build anticipation

➡️ Navigates to: `/final-message`

---

### 6. Final Message Screen (`/final-message`)
- Displays:
  - Final emotional message
  - Closing note
  - CTA buttons:
    - Replay Memories
    - Keep Smiling
- Purpose:
  - Emotional closure
  - Leave lasting impression

---

## 🔁 Navigation System

Navigation is implemented using **named routes**:

/ → WelcomeScreen
/gallery → GalleryScreen
/cherished → CherishedMomentsScreen
/sent-love → SentWithLoveScreen
/for-you → ForYouMyLoveScreen
/final-message → FinalMessageScreen



---

## 🧭 Bottom Navigation

Custom widget: `LoveBottomNav`

Features:
- 4 icons:
  - Home
  - Journey
  - Memories
  - Settings
- Uses:
  - `Navigator.pushReplacementNamed()` for switching screens
- Prevents duplicate navigation:
  - If tapped index == currentIndex → ignore

---

## 🎨 UI/UX Design System

### Theme
- Romantic pastel palette
- Colors:
  - Pink
  - Lavender
  - Soft white
  - Light rose

### Components
- Rounded cards (radius: 24–32)
- Soft shadows
- Gradient backgrounds
- Glassmorphism-like overlays

### Typography
- Serif / elegant fonts
- Italic headings for emotional tone
- Uppercase micro labels

---

## 🧩 Reusable Components

- `LoveBottomNav`
- `JourneyHeader`
- Card-based UI sections
- Video card widget
- Quote card layouts

---

## 📁 Project Structure

lib/
│
├── main.dart
├── routes/
│ └── app_routes.dart
│
├── screens/
│ ├── welcome_screen.dart
│ ├── gallery_screen.dart
│ ├── cherished_moments_screen.dart
│ ├── sent_with_love_screen.dart
│ ├── for_you_my_love_screen.dart
│ └── final_message_screen.dart
│
├── widgets/
│ ├── love_bottom_nav.dart
│ └── journey_header.dart
│
└── utils/
└── colors.dart


---

## 📦 Assets Structure

assets/
├── images/
├── videos/
└── audio/


---

## ⚙️ Current State

✔ UI fully implemented  
✔ Navigation connected  
✔ Screens structured in flow  
✔ Static data used (images, text)

---

## ❗ Current Limitations

- No real video playback (UI only)
- No background music yet
- No backend (Firebase not integrated)
- No animations (Lottie not added yet)
- Content is static (hardcoded)

---

## 🔮 Planned Enhancements

### 🎵 Background Music
- Loop romantic music across screens

### 🎬 Video Player
- Replace UI cards with real playable videos

### 💖 Animations
- Lottie hearts, sparkles, transitions

### 🔐 Unlock Screen
- PIN / swipe-based reveal system

### ☁️ Firebase Integration
- Dynamic content (images/videos/messages)

### 🧠 AI Personalization
- Generate custom romantic messages dynamically

---

## 🧠 Agent Instructions (IMPORTANT)

If an AI agent reads this file:

### Understand:
- This is a **UI-first emotional storytelling app**
- Navigation is **linear + guided**
- UI consistency is critical

### While extending:
- Maintain design language (pastel + soft UI)
- Avoid breaking flow
- Keep emotional tone consistent
- Reuse components instead of duplicating UI

### When adding features:
- Do not disrupt navigation flow
- Add features modularly
- Prefer reusable widgets

---

## 🚀 Future Direction (Advanced Vision)

Transform this into:

### 🎯 SaaS Platform
Where users can:
- Upload photos/videos
- Enter name & messages
- Generate their own surprise app

---

## ❤️ Summary

This project is a **romantic digital experience app**, built with Flutter, designed to:

- Tell a story
- Evoke emotions
- Deliver a personalized surprise

It combines **UI design + storytelling + interaction** into a single cohesive experience.

---

**End of Context**



