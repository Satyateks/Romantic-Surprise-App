
import 'package:flutter/material.dart';

import '../main.dart';
import 'journeyHeader.dart';
import 'loveBottomNav.dart';

class ForYouMyLoveScreen extends StatelessWidget {
  const ForYouMyLoveScreen({super.key});

  Widget _smallMemoryCard(String imageUrl) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.network(
          imageUrl,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _videoTile({
    required String title,
    required String imageUrl,
    double height = 130,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            width: double.infinity,
            height: height,
            fit: BoxFit.cover,
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.36),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white.withOpacity(0.55),
                child: const Icon(
                  Icons.play_arrow_rounded,
                  size: 34,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: 14,
            bottom: 12,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const JourneyHeader(),
              const SizedBox(height: 18),

              /// Featured image
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Stack(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=1000",
                      width: double.infinity,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 16,
                      top: 16,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white.withOpacity(0.35),
                        child: const Icon(
                          Icons.brush_rounded,
                          color: AppColors.accent,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      bottom: 18,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "FEATURED MOMENT",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Where it all\nbegan...",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              height: 1.1,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              Row(
                children: const [
                  Text(
                    "Treasured Memories",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.deepText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "VIEW GALLERY",
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.lightText,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),
              Row(
                children: [
                  _smallMemoryCard(
                    "https://images.unsplash.com/photo-1517841905240-472988babdf9?w=1000",
                  ),
                  const SizedBox(width: 12),
                  _smallMemoryCard(
                    "https://images.unsplash.com/photo-1516589178581-6cd7833ae3b2?w=1000",
                  ),
                ],
              ),

              const SizedBox(height: 24),
              const Text(
                "For You, My Love",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.deepText,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "❞",
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.accent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "\"Your smile makes\neverything\nbrighter than the\nsun.\"",
                      style: TextStyle(
                        fontSize: 21,
                        color: AppColors.deepText,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        height: 1.35,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "— —  DAILY WHISPER",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.accent,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                decoration: BoxDecoration(
                  color: const Color(0xFFF3D3DF),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  children: const [
                    Icon(Icons.favorite, color: AppColors.accent, size: 28),
                    SizedBox(height: 12),
                    Text(
                      "Feeling grateful for every\nsecond we share.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.deepText,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
              const Text(
                "Living Frames",
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.deepText,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 14),

              _videoTile(
                title: "OUR FIRST DANCE",
                imageUrl:
                    "https://images.unsplash.com/photo-1516589178581-6cd7833ae3b2?w=1000",
                height: 135,
              ),
              const SizedBox(height: 14),
              _videoTile(
                title: "RAINY SUNDAY ECHOES",
                imageUrl:
                    "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?w=1000",
                height: 135,
              ),

              const SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 26),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7D2DF),
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x12000000),
                      blurRadius: 20,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "A Secret\nAwaits...",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: AppColors.deepText,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      "Something special is hidden\nbehind the glass. Swipe\nwhen you're ready.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.deepText,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Container(
                      width: 210,
                      height: 46,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.92),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x14000000),
                            blurRadius: 12,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "REVEAL SURPRISE ✨",
                          style: TextStyle(
                            color: AppColors.accent,
                            fontSize: 12,
                            letterSpacing: 1.1,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const LoveBottomNav(currentIndex: 0),
    );
  }
}
