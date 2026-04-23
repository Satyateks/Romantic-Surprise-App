import 'package:flutter/material.dart';

import '../main.dart';
import 'journeyHeader.dart';
import 'loveBottomNav.dart';
import '../widgets/fade_in_widget.dart';
import '../widgets/audio_player_widget.dart';

class SentWithLoveScreen extends StatelessWidget {
  const SentWithLoveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            children: [
              const JourneyHeader(),
              const SizedBox(height: 30),
              const FadeInWidget(
                child: Text(
                  "PRIVATE MOMENTS",
                  style: TextStyle(
                    fontSize: 11,
                    letterSpacing: 2.5,
                    color: AppColors.deepText,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const FadeInWidget(
                delay: Duration(milliseconds: 200),
                child: Text(
                  "Sent with Love",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF2F252A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const FadeInWidget(
                delay: Duration(milliseconds: 400),
                child: Text(
                  "✧  ༄RK ༄  ✧RK✧  ༄RK",
                  style: TextStyle(
                    color: AppColors.accent,
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              /// Main quote card
              FadeInWidget(
                delay: const Duration(milliseconds: 600),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.55),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.network(
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400",
                            width: 56,
                            height: 56,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Text(
                        "❞",
                        style: TextStyle(
                          fontSize: 28,
                          color: AppColors.softPink2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "\"Your laughter is\nthe melody that\nmakes my every\nday feel like a\nbeautiful dream.\"",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.45,
                          fontSize: 22,
                          color: AppColors.deepText,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.softPink,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF7E9EE),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "March 25, 2025",
                          style: TextStyle(
                            fontSize: 11,
                            color: AppColors.deepText,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 22),

              /// Small quote card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.72), borderRadius: BorderRadius.circular(26)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "🫶🏻 🫶🏽",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "The way you notice the\nsmallest details is\nmagic.",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.deepText,
                        fontWeight: FontWeight.w600,
                        height: 1.35,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "FROMLEO",
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.lightText,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              /// Image banner
              ClipRRect(
                borderRadius: BorderRadius.circular(26),
                child: Stack(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1516589091380-5d8e87df6999?w=1000",
                      height: 162,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 16,
                      bottom: 18,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "FOREVER",
                            style: TextStyle(
                              fontSize: 11,
                              letterSpacing: 1.3,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Moments in time",
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              /// Voice note card
              FadeInWidget(
                delay: const Duration(milliseconds: 800),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.72),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "VOICE NOTE",
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.lightText,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The sound of your voice\nis home.",
                        style: TextStyle(
                          fontSize: 19,
                          color: AppColors.deepText,
                          fontWeight: FontWeight.w700,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(height: 18),
                      AudioPlayerWidget(
                        audioPath: 'audio/bg_music.mp3',
                        isAsset: true,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 28),

              SizedBox(
                width: 190,
                height: 54,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2A9BF),
                    foregroundColor: const Color(0xFF5E404D),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: ()=> Navigator.pushNamed(context, '/final-message'),
                  icon: const Icon(Icons.send_rounded, size: 18),
                  label: const Text(
                    "SEND A SURPRISE",
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const LoveBottomNav(currentIndex: 1),
    );
  }
}
