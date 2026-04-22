# 💖 Romantic Surprise App - Setup Guide

## 🚀 Quick Start

### Prerequisites
- Flutter SDK (3.11.1 or higher)
- Dart SDK
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Installation Steps

1. **Clone or download the project**

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Add your media files:**

   **Images** (Required):
   - Place your images in `assets/images/`
   - Supported formats: JPG, PNG
   - Recommended: At least 2-3 images
   - Current placeholders: `img1.jpg`, `img2.png`

   **Videos** (Required):
   - Place your videos in `assets/videos/`
   - Supported formats: MP4, MOV
   - Recommended: 720p or 1080p resolution
   - Keep file sizes under 50MB for smooth playback
   - Current placeholders: `video1.mp4`, `video2.mp4`

   **Audio** (Optional but recommended):
   - Add background music as `assets/audio/bg_music.mp3`
   - Recommended: Romantic instrumental, 2-5 minutes
   - Format: MP3 or AAC
   - Bitrate: 128-192 kbps

4. **Run the app:**
   ```bash
   flutter run
   ```

---

## 📱 Features Overview

### ✨ Animations
- Smooth fade-in animations on all screens
- Pulsing heart animations
- Slide-up entrance effects
- Staggered content reveals

### 🎬 Video Playback
- Tap any video card to play in fullscreen
- Full video controls (play, pause, seek)
- Support for both local and network videos
- Automatic aspect ratio handling

### 🎵 Audio Features
- Background music that loops throughout the app
- Interactive audio player for voice notes
- Play/pause controls with progress slider
- Duration display and seek functionality

### 🎨 Modern UI/UX
- Romantic pastel color scheme
- Glassmorphism effects
- Smooth transitions
- Responsive layouts
- Touch feedback on all interactive elements

---

## 🎨 Customization Guide

### 1. Change Colors

Edit `lib/main.dart` - `AppColors` class:

```dart
class AppColors {
  static const Color bg = Color(0xFFF8F3F4);
  static const Color pink = Color(0xFFF5C8D8);
  static const Color lavender = Color(0xFFD9D3F2);
  // ... customize other colors
}
```

### 2. Update Content

**Welcome Screen** (`lib/ui/wlcm.dart`):
- Change the welcome message
- Update button text

**Gallery Screen** (`lib/ui/gallery.dart`):
- Update image paths
- Change section titles

**Cherished Moments** (`lib/ui/cherishedMoments.dart`):
- Update video paths
- Change video titles and descriptions

**Sent With Love** (`lib/ui/sentWithLove.dart`):
- Update quotes and messages
- Change dates and names

### 3. Add More Videos

In `lib/ui/cherishedMoments.dart`, add more video cards:

```dart
_videoCard(
  title: "Your Video Title",
  path: "assets/images/thumbnail.jpg",
  height: 220,
  subtitle: "SUBTITLE",
  duration: "03:45",
  large: true,
  videoPath: "assets/videos/your_video.mp4",
),
```

### 4. Customize Animations

Edit animation durations in widget files:

```dart
FadeInWidget(
  duration: Duration(milliseconds: 800), // Change this
  delay: Duration(milliseconds: 200),    // And this
  child: YourWidget(),
)
```

---

## 🎯 Screen Flow

```
Welcome Screen
    ↓
Gallery Screen (Images)
    ↓
Cherished Moments (Videos)
    ↓
Sent With Love (Quotes + Audio)
    ↓
For You My Love (Mixed Content)
    ↓
Final Message (Closing)
```

---

## 🐛 Troubleshooting

### Videos not playing?
- Ensure video files are in `assets/videos/`
- Check `pubspec.yaml` has `assets/videos/` listed
- Run `flutter pub get` after adding assets
- Verify video format is MP4 or MOV

### Audio not working?
- Check audio file is at `assets/audio/bg_music.mp3`
- Ensure `pubspec.yaml` includes `assets/audio/`
- Verify audio format is MP3 or AAC
- Check device volume is not muted

### Images not showing?
- Verify image paths in code match actual file names
- Check `pubspec.yaml` includes `assets/images/`
- Run `flutter clean` then `flutter pub get`
- Ensure image formats are JPG or PNG

### Build errors?
```bash
flutter clean
flutter pub get
flutter run
```

### Performance issues?
- Reduce video file sizes (compress to 720p)
- Optimize images (reduce resolution if > 2MB)
- Use lower bitrate for audio (128 kbps)

---

## 📦 Dependencies

All dependencies are already configured in `pubspec.yaml`:

- `video_player: ^2.9.2` - Video playback
- `chewie: ^1.13.1` - Video player UI
- `audioplayers: ^6.6.0` - Audio playback
- `lottie: ^3.1.3` - Animations (ready for future use)
- `cached_network_image: ^3.4.1` - Image caching
- `flutter_staggered_grid_view: ^0.7.0` - Grid layouts

---

## 🎁 Tips for Best Experience

1. **Choose the right music:**
   - Romantic instrumental works best
   - Avoid songs with lyrics (can be distracting)
   - Keep volume moderate (app sets to 30%)

2. **Video selection:**
   - Use high-quality but compressed videos
   - Keep videos under 2 minutes for engagement
   - Add variety (close-ups, landscapes, activities)

3. **Image quality:**
   - Use high-resolution images (at least 1080p)
   - Mix portrait and landscape orientations
   - Include variety of moments

4. **Personalization:**
   - Update all placeholder text with personal messages
   - Change dates to meaningful ones
   - Add inside jokes or special references

---

## 🚀 Deployment

### Android
```bash
flutter build apk --release
```
APK will be at: `build/app/outputs/flutter-apk/app-release.apk`

### iOS
```bash
flutter build ios --release
```
Then open in Xcode to archive and distribute.

---

## 💡 Future Enhancements Ideas

- [ ] Add photo filters
- [ ] Record videos within app
- [ ] Voice note recording
- [ ] PIN lock screen
- [ ] Firebase integration
- [ ] Push notifications
- [ ] Custom themes
- [ ] Share memories feature

---

## 📞 Support

If you encounter issues:
1. Check this guide first
2. Review `PROJECT_CONTEXT.md` for technical details
3. Ensure all dependencies are installed
4. Try `flutter clean` and rebuild

---

## ❤️ Enjoy!

This app is designed to create a memorable, emotional experience. Take time to personalize it with your own content and make it truly special!

**Happy coding! 💖**
