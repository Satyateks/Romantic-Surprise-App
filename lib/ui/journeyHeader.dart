
import 'package:flutter/material.dart';

class JourneyHeader extends StatelessWidget {
  const JourneyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.auto_awesome, color: Color(0xFFF29BC2), size: 18),
        SizedBox(width: 6),
        Text(
          "Our Journey",
          style: TextStyle(
            color: Color(0xFFF08AB8),
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
          ),
        ),
        Spacer(),
        Icon(Icons.favorite, color: Color(0xFFF08AB8), size: 20),
      ],
    );
  }
}
