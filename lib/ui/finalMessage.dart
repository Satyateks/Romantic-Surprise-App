

import 'package:flutter/material.dart';

import '../main.dart';


class FinalMessageScreen extends StatelessWidget {
  const FinalMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9EEF2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Container(
                width: 62,
                height: 62,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF6DCE5),
                ),
                child: const Icon(
                  Icons.electric_bolt_outlined,
                  color: AppColors.deepText,
                  size: 28,
                ),
              ),
              const SizedBox(height: 34),
              const Text(
                "This app is just a\nsmall way to tell\nyou how special\nyou are",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  height: 1.18,
                  color: AppColors.deepText,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Every moment we've shared is a treasure\nI hold close to my heart. Thank you for\nbeing you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.deepText,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 34),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 28),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.58),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    const Text(
                      "★ ★ ★",
                      style: TextStyle(
                        color: AppColors.darkButton,
                        fontSize: 14,
                        letterSpacing: 4,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "WITH LOVE ALWAYS",
                      style: TextStyle(
                        color: AppColors.lightText,
                        fontSize: 11,
                        letterSpacing: 1.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Our Infinite Story",
                      style: TextStyle(
                        color: AppColors.deepText,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkButton,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.menu_book_rounded, size: 18),
                        label: const Text(
                          "Replay Memories",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      width: double.infinity,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: const Color(0xFFF1C9D7),
                          width: 1.4,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "☺ Keep Smiling",
                          style: TextStyle(
                            color: AppColors.lightText,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 44, height: 1, color: const Color(0xFFE8D7DE)),
                  const SizedBox(width: 12),
                  const Text(
                    "∞",
                    style: TextStyle(
                      color: AppColors.deepText,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(width: 44, height: 1, color: const Color(0xFFE8D7DE)),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

