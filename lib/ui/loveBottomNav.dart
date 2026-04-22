
import 'package:flutter/material.dart';

class LoveBottomNav extends StatelessWidget {
  final int currentIndex;

  const LoveBottomNav({
    super.key,
    required this.currentIndex,
  });

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/for-you');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/sent-love');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/cherished');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/final-message');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home_rounded,
      Icons.menu_book_rounded,
      Icons.card_giftcard_rounded,
      Icons.settings_rounded,
    ];

    return Container(
      margin: const EdgeInsets.fromLTRB(14, 0, 14, 14),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(28),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          final selected = currentIndex == index;

          return GestureDetector(
            onTap: () => _onItemTapped(context, index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected
                    ? const Color(0xFFF8E3EC)
                    : Colors.transparent,
              ),
              child: Icon(
                icons[index],
                color: const Color(0xFFF0A6C9),
                size: 23,
              ),
            ),
          );
        }),
      ),
    );
  }
}