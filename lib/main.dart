import 'package:audioplayers/audioplayers.dart';
import 'package:crush/ui/gallery.dart';
import 'package:flutter/material.dart';

import 'ui/cherishedMoments.dart';
import 'ui/finalMessage.dart';
import 'ui/forYouMyLove.dart';
import 'ui/sentWithLove.dart';
import 'ui/wlcm.dart';

void main() {
  runApp(const RomanticSurpriseApp());
}

class RomanticSurpriseApp extends StatelessWidget {
  const RomanticSurpriseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Romantic Surprise',
      theme: ThemeData( useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF8F3F4),
        fontFamily: 'Serif',
      ),
      // home: const WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/cherished': (context) => const CherishedMomentsScreen(),
        '/sent-love': (context) => const SentWithLoveScreen(),
        '/for-you': (context) => const ForYouMyLoveScreen(),
        '/final-message': (context) => const FinalMessageScreen(),
      },
    );
  }
}

class AppColors {
  static const Color bg = Color(0xFFF8F3F4);
  static const Color textDark = Color(0xFF7A5C67);
  static const Color textSoft = Color(0xFF9D8A91);
  static const Color pink = Color(0xFFF5C8D8);
  static const Color pink2 = Color(0xFFF2B7CF);
  static const Color lavender = Color(0xFFD9D3F2);
  static const Color white = Colors.white;
  static const Color shadow = Color(0x1A000000);
  // static const Color bg = Color(0xFFF9F4F6);
  static const Color card = Color(0xFFFFFBFC);
  static const Color softPink = Color(0xFFF6DCE6);
  static const Color softPink2 = Color(0xFFF4C7D7);
  static const Color accent = Color(0xFFEB8FB8);
  static const Color deepText = Color(0xFF6D5360);
  static const Color lightText = Color(0xFFA28C96);
  static const Color muted = Color(0xFFECE1E5);
  static const Color darkButton = Color(0xFF8A6278);
}




final player = AudioPlayer();

void playMusic() async {
  await player.setReleaseMode(ReleaseMode.loop);
  await player.play(AssetSource('audio/bg_music.mp3'));
}


/// -------------------------
/// SCREEN 1
/// -------------------------

/// -------------------------
/// SCREEN 2
/// -------------------------

/// -------------------------
/// SCREEN 3
/// -------------------------







/// ------------------------------
/// SCREEN 1 - SENT WITH LOVE
/// ------------------------------

/// ------------------------------
/// SCREEN 2 - FOR YOU MY LOVE
/// ------------------------------

/// ------------------------------
/// SCREEN 3 - FINAL MESSAGE
/// ------------------------------





