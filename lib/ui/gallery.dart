import 'package:flutter/material.dart';
import '../main.dart';
import 'cherishedMoments.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  Widget imageCard(
    String path, {
    double height = 180,
    IconData? overlayIcon,
    Alignment iconAlignment = Alignment.topRight,
    BorderRadius? borderRadius,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 14,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              path,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFF3E2DA),
                        Color(0xFFE8C8D8),
                      ],
                    ),
                  ),
                );
              },
            ),
            if (overlayIcon != null)
              Align(
                alignment: iconAlignment,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white.withOpacity(0.88),
                    child: Icon(
                      overlayIcon,
                      size: 16,
                      color: AppColors.textDark,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const horizontal = 16.0;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F5F6),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: horizontal, vertical: 14),
              child: Row(
                children: const [
                  Icon(Icons.auto_awesome, color: Color(0xFFF49AC2), size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Our Journey",
                    style: TextStyle(
                      color: Color(0xFFF07FAE),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.favorite, color: Color(0xFFF07FAE), size: 24),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: horizontal),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "MEMORIES CAPTURED",
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 4,
                        color: AppColors.textSoft,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "A Timeless Collection",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.textDark,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 56,
                      height: 2,
                      color: const Color(0xFFF0C8D4),
                    ),
                    const SizedBox(height: 26),

                    /// top grid
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: imageCard(
                            "assets/images/img1.jpg",
                            height: 360,
                            overlayIcon: Icons.menu_book_outlined,
                            iconAlignment: Alignment.bottomLeft,
                            borderRadius: BorderRadius.circular(36),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            children: [
                              imageCard(
                                "assets/images/img2.jpg",
                                height: 170,
                                borderRadius: BorderRadius.circular(28),
                              ),
                              const SizedBox(height: 14),
                              imageCard(
                                "assets/images/img3.jpg",
                                height: 176,
                                borderRadius: BorderRadius.circular(28),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    /// second grid
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              imageCard(
                                "assets/images/img4.jpg",
                                height: 140,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              const SizedBox(height: 14),
                              Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF7EFF2),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x10000000),
                                      blurRadius: 10,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Transform.rotate(
                                    angle: -0.08,
                                    child: Container(
                                      width: 120,
                                      height: 100,
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(6),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0x18000000),
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        "assets/images/img5.jpg",
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) => Container(
                                          color: const Color(0xFFE8E2D7),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: imageCard(
                            "assets/images/img6.jpg",
                            height: 310,
                            overlayIcon: Icons.favorite,
                            iconAlignment: Alignment.topRight,
                            borderRadius: BorderRadius.circular(34),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),
                    imageCard(
                      "assets/images/img7.jpg",
                      height: 160,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    const SizedBox(height: 34),
                    const Text(
                      "✦  ✧  ✦",
                      style: TextStyle(
                        color: Color(0xFFF0B5D0),
                        fontSize: 16,
                        letterSpacing: 6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 240,
                      height: 56,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF5C7D8),
                          foregroundColor: AppColors.textDark,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: ()=> Navigator.pushNamed(context, '/cherished'),
                        child: const Text(
                          "ADD NEW MOMENT",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
