import 'package:flutter/material.dart';
import '../main.dart';
import '../screens/video_player_screen.dart';
import '../widgets/fade_in_widget.dart';

class CherishedMomentsScreen extends StatefulWidget {
  const CherishedMomentsScreen({super.key});

  @override
  State<CherishedMomentsScreen> createState() => _CherishedMomentsScreenState();
}

class _CherishedMomentsScreenState extends State<CherishedMomentsScreen> {
  int currentIndex = 1;

  Widget _videoCard({
    required String title,
    required String path,
    required double height,
    String? subtitle,
    String? duration,
    bool large = false,
    bool showPlay = true,
    String? badge,
    String? videoPath,
  }) {
    return GestureDetector(
      onTap: () {
        if (videoPath != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(
                videoPath: videoPath,
                title: title,
                isAsset: true,
              ),
            ),
          );
        }
      },
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [
            BoxShadow(
              color: Color(0x16000000),
              blurRadius: 14,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                path,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFC8E6C),
                        Color(0xFFB15D7E),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withValues(alpha: 0.48),
                    ],
                  ),
                ),
              ),
              if (badge != null)
                Positioned(
                  top: 14,
                  right: 14,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.22),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text(
                      badge,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              if (showPlay)
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xAAFFF1D8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 34,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (subtitle != null)
                Positioned(
                  left: 18,
                  bottom: large ? 52 : 40,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              Positioned(
                left: 18,
                bottom: 16,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: large ? 22 : 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (duration != null)
                Positioned(
                  right: 18,
                  bottom: 18,
                  child: Text(
                    duration,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _recentTile({
    required String title,
    required String subtitle,
    required String path,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.76),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              path,
              width: 62,
              height: 52,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 62,
                height: 52,
                color: const Color(0xFFEFD7DF),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.textDark,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.textSoft,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.favorite, color: Color(0xFFF3A1C4)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// top bar
              Row(
                children: const [
                  Icon(Icons.auto_awesome, color: Color(0xFFF4A6CC), size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Our Journey",
                    style: TextStyle(
                      color: Color(0xFFF08AB6),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.favorite, color: Color(0xFFF08AB6), size: 22),
                ],
              ),
              const SizedBox(height: 30),
              const FadeInWidget(
                child: Center(
                  child: Text(
                    "DIGITAL CONCIERGE",
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 3,
                      color: AppColors.textSoft,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const FadeInWidget(
                delay: Duration(milliseconds: 200),
                child: Center(
                  child: Text(
                    "Cherished\nMoments",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      height: 1.05,
                      color: AppColors.textDark,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const FadeInWidget(
                delay: Duration(milliseconds: 400),
                child: Center(
                  child: Text(
                    "Every heartbeat captured in a frame. Replay\nthe magic of us.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textSoft,
                      fontStyle: FontStyle.italic,
                      height: 1.4,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 26),

              FadeInWidget(
                delay: const Duration(milliseconds: 600),
                child: _videoCard(
                  title: "Our First Sunset",
                  path: "assets/images/img1.jpeg",
                  height: 220,
                  subtitle: "THE BEGINNING",
                  duration: "04:22",
                  large: true,
                  videoPath: "assets/videos/video1.mp4",
                ),
              ),

              const SizedBox(height: 18),

              FadeInWidget(
                delay: const Duration(milliseconds: 800),
                child: Row(
                  children: [
                    Expanded(
                      child: _videoCard(
                        title: "Quiet Mornings",
                        path: "assets/images/img2.jpeg",
                        height: 140,
                        videoPath: "assets/videos/video2.mp4",
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: _videoCard(
                        title: "Sparkling Night",
                        path: "assets/images/img3.jpeg",
                        height: 140,
                        videoPath: "assets/videos/video5.mp4",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              FadeInWidget(
                delay: const Duration(milliseconds: 1000),
                child: _videoCard(
                  title: "Paris in the Rain",
                  path: "assets/images/img5.jpeg",
                  height: 220,
                  subtitle: "TRAVEL DIARY",
                  badge: "CINEMA EDIT",
                  large: true,
                  videoPath: "assets/videos/video4.mp4",
                ),
              ),

              const SizedBox(height: 30),

              FadeInWidget(
                delay: const Duration(milliseconds: 1200),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.62),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.star, color: Color(0xFFF39FC6), size: 36),
                      const SizedBox(height: 18),
                      const Text(
                        "A Secret Message",
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.textDark,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Someone left a video surprise for\nyou to unlock.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textSoft,
                          fontStyle: FontStyle.italic,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/sent-love'),
                        child: Container(
                          width: 230,
                          height: 54,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFF5C3D7),
                                Color(0xFFD9D4F5),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "REVEAL SURPRISE",
                              style: TextStyle(
                                color: AppColors.textDark,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 34),
              const Text(
                "RECENTLY ADDED",
                style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 2.2,
                  color: AppColors.textSoft,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 18),

              _recentTile(
                title: "Beachside Laughs",
                subtitle: "Added 2 days ago • 1:12",
                path: "assets/images/img4.jpeg",
              ),
              _recentTile(
                title: "Anniversary Dinner",
                subtitle: "Added 1 week ago • 3:45",
                path: "assets/images/img1.jpeg",
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(14, 0, 14, 14),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.82),
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navItem(Icons.home_rounded, 0),
            _navItem(Icons.menu_book_rounded, 1),
            _highlightNavItem(Icons.workspaces_rounded),
            _navItem(Icons.settings_rounded, 3),
          ],
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          currentIndex = index;
        });
      },
      icon: Icon(
        icon,
        color: const Color(0xFFF1A6C8),
        size: 26,
      ),
    );
  }

  Widget _highlightNavItem(IconData icon) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [
            Color(0xFFF7D0DF),
            Color(0xFFF5EAF1),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x15000000),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: const Color(0xFFF1A6C8),
        size: 28,
      ),
    );
  }
}
