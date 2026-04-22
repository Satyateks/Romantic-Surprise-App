import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/fade_in_widget.dart';
import '../widgets/animated_heart.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.1).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF5D6E2),
              Color(0xFFF4EEF6),
              Color(0xFFF8E3E7),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Column(
              children: [
                const Spacer(),
                FadeInWidget(
                  delay: const Duration(milliseconds: 200),
                  child: ScaleTransition(
                    scale: _pulseAnimation,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 132,
                          height: 132,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withValues(alpha: 0.78),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.shadow,
                                blurRadius: 24,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 104,
                          height: 104,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: RadialGradient(
                              colors: [
                                Color(0xFF5B3B61),
                                Color(0xFF2C1D30),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.shadow,
                                blurRadius: 16,
                                offset: Offset(0, 6),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite,
                              size: 54,
                              color: Color(0xFFE8C6F3),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          top: 8,
                          child: Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.9),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.auto_awesome,
                              size: 18,
                              color: AppColors.textSoft,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 34),
                const FadeInWidget(
                  delay: Duration(milliseconds: 400),
                  child: Text(
                    "Something\nspecial for you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 38,
                      height: 1.1,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textDark,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                const FadeInWidget(
                  delay: Duration(milliseconds: 600),
                  child: Text(
                    "A little surprise made with love",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textSoft,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 42),
                FadeInWidget(
                  delay: const Duration(milliseconds: 800),
                  child: SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF4C5D8),
                        foregroundColor: AppColors.textDark,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      onPressed: () {
                        playMusic();
                        Navigator.pushNamed(context, '/gallery');
                      },
                      child: const Text(
                        "OPEN SURPRISE  →",
                        style: TextStyle(
                          letterSpacing: 2.2,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const FadeInWidget(
                  delay: Duration(milliseconds: 1000),
                  child: AnimatedHeart(size: 18, color: AppColors.textSoft),
                ),
                const SizedBox(height: 18),
                const FadeInWidget(
                  delay: Duration(milliseconds: 1200),
                  child: Text(
                    "CURATED EXPERIENCE",
                    style: TextStyle(
                      fontSize: 11,
                      letterSpacing: 2.6,
                      color: Color(0xFFB8ABB0),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
