# 💖 Romantic Surprise App

A beautiful Flutter app designed to create an emotional, story-driven experience with photos, videos, audio, and romantic messages.

## ✨ Features

- 🎬 **Real Video Playback** - Tap to play videos in fullscreen with controls
- 🎵 **Background Music** - Romantic music loops throughout the app
- 🎤 **Audio Player** - Interactive voice note player with controls
- ✨ **Smooth Animations** - Fade-in effects and pulsing hearts
- 💖 **Beautiful UI** - Romantic pastel colors with glassmorphism
- 📱 **Responsive Design** - Works on all screen sizes

## 🚀 Quick Start

1. **Install dependencies:**
   ```bash
   flutter pub get
   ```

2. **Add your media files:**
   - Images → `assets/images/`
   - Videos → `assets/videos/`
   - Audio → `assets/audio/bg_music.mp3`

3. **Run the app:**
   ```bash
   flutter run
   ```

## � Documentation

- **[SETUP_GUIDE.md](SETUP_GUIDE.md)** - Complete setup instructions
- **[PROJECT_CONTEXT.md](PROJECT_CONTEXT.md)** - Technical documentation
- **[ENHANCEMENTS_SUMMARY.md](ENHANCEMENTS_SUMMARY.md)** - What's new

## 🎯 App Flow

```
Welcome → Gallery → Cherished Moments → Sent With Love → For You → Final Message
```

## 🛠️ Tech Stack

- Flutter 3.11.1+
- Dart
- video_player & chewie (video playback)
- audioplayers (audio playback)
- Custom animations

## 📱 Screenshots

The app features 6 beautifully designed screens:
1. **Welcome Screen** - Animated entrance with pulsing heart
2. **Gallery Screen** - Image memories with fade-in effects
3. **Cherished Moments** - Real video playback
4. **Sent With Love** - Quotes & interactive audio player
5. **For You My Love** - Mixed content with animations
6. **Final Message** - Emotional closure

## 🎨 Customization

Easy to customize:
- Colors in `lib/main.dart`
- Content in screen files
- Add more videos/images
- Change animation timings

## � Key Features

✅ Real video playback with controls  
✅ Background music integration  
✅ Interactive audio player  
✅ Smooth fade-in animations  
✅ Pulsing heart effects  
✅ Modern glassmorphism UI  
✅ Responsive layouts  
✅ Error handling  

## 🔮 Future Enhancements

- Photo filters
- Voice recording
- PIN lock screen
- Firebase integration
- AI-generated messages
- Push notifications

## 📁 Project Structure

```
lib/
├── main.dart
├── screens/
│   └── video_player_screen.dart
├── widgets/
│   ├── fade_in_widget.dart
│   ├── animated_heart.dart
│   └── audio_player_widget.dart
├── helper/
│   └── video_player_widget.dart
└── ui/
    ├── wlcm.dart
    ├── gallery.dart
    ├── cherishedMoments.dart
    ├── sentWithLove.dart
    ├── forYouMyLove.dart
    ├── finalMessage.dart
    ├── loveBottomNav.dart
    └── journeyHeader.dart
```

## 📦 Dependencies

- `video_player: ^2.9.2` - Video playback
- `chewie: ^1.13.1` - Video player UI
- `audioplayers: ^6.6.0` - Audio playback
- `lottie: ^3.1.3` - Animations
- `cached_network_image: ^3.4.1` - Image caching
- `flutter_staggered_grid_view: ^0.7.0` - Grid layouts

## 🐛 Troubleshooting

**Videos not playing?**
- Ensure video files are in `assets/videos/`
- Run `flutter pub get` after adding assets

**Audio not working?**
- Check audio file is at `assets/audio/bg_music.mp3`
- Verify device volume is not muted

**Build errors?**
```bash
flutter clean
flutter pub get
flutter run
```

## 📄 License

This project is open source and available for personal use.

## ❤️ Made with Love

Built with Flutter to create memorable, emotional experiences.

---

**For detailed setup instructions, see [SETUP_GUIDE.md](SETUP_GUIDE.md)**
