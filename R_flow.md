# 💖 Crush App (Flutter Project)

## 📌 Project Overview

This is a Flutter-based mobile application designed as a personalized emotional experience. The app is created for a client who wants to present a special, interactive, and visually appealing digital message to their crush.

When the user opens the app, they will see a sequence of photos/videos along with compliments displayed in a smooth and aesthetic way.

---

## 🎯 Objective

* Display photos and videos of the crush
* Show compliments (tarif) with animations
* Create a romantic and emotional user experience
* Keep UI clean, modern, and visually appealing

---

## 🧩 Features (Planned)

### 1. Splash Screen

* Gradient background (pink/purple)
* Intro text: “Hey ❤️”
* Short delay → navigate to home screen

---

### 2. Home Screen (Core Experience)

* Fullscreen background (image/video)
* Dark overlay for readability
* Center/bottom text (compliments)
* Smooth transitions between media

---

### 3. Media Slideshow (Upcoming)

* Auto-play images/videos
* Each media paired with a compliment
* Smooth animation flow

---

### 4. Final Screen (Planned)

* Message:

  > “I just wanted to say… I like you ❤️”
* Replay button

---

### 5. Optional Enhancements (Future Scope)

* Background music
* Floating hearts animation
* Tap to pause/play
* Advanced transitions

---

## 🏗️ Current Implementation Status

### ✅ Project Setup

Command used:

```bash
flutter create crush
```

---

### ✅ Folder Structure

```bash
lib/
 ┣ screens/
 ┣ widgets/
 ┣ models/
 ┗ main.dart
```

---

### ✅ Main Entry (`main.dart`)

* App initialized
* Splash screen set as starting screen

---

### ✅ Splash Screen

* Gradient UI created
* Text displayed: “Hey ❤️”
* Auto navigation after 3 seconds

---

### ✅ Home Screen (Basic)

* Background image added
* Dark overlay applied
* Static compliment text shown

---

### ✅ Assets Setup

* Images added in `assets/`
* Configured in `pubspec.yaml`

---

### ✅ Video Support Setup

* Added dependencies:

```yaml
video_player
chewie
```

* Created custom `VideoPlayerWidget`

---

## ⚠️ Issues Faced & Fixes

### ❌ Error:

```
Undefined class 'VideoPlayerController'
```

### ✅ Fix:

* Installed required packages:

  * video_player
  * chewie
* Added imports:

```dart
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
```

---

### ⚠️ Note:

* `VideoPlayerController.asset()` works only for local assets
* Use `network()` for online videos

---

## 🎨 UI/UX Design

### Tool Used:

* Figma (for UI design planning)

### Design Style:

* Romantic, minimal, soft
* Gradient backgrounds
* Elegant typography
* Focus on emotional experience

---

## 🔜 Next Steps

### 🚧 To Be Implemented:

* Slideshow system (images + videos)
* Animated text (typewriter / fade)
* Auto transition logic
* Data-driven UI (list of media + text)

---

## 🧠 Data Structure Plan

```dart
List<Map<String, String>> data = [
  {
    "image": "assets/img1.jpg",
    "text": "You are amazing ❤️"
  },
  {
    "video": "assets/video1.mp4",
    "text": "Your smile is everything 💫"
  }
];
```

---

## 🚀 Future Improvements

* Better animations (Hero, Lottie)
* Performance optimization
* App size optimization (media compression)
* Custom controls for video

---

## ❤️ Conclusion

This project is a creative and emotional Flutter application combining:

* UI/UX design
* Media handling (images/videos)
* Animation

The foundation is successfully set, and the next phase will focus on enhancing user experience with animations and smooth media transitions.

---
