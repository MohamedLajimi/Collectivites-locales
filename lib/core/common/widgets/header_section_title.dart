import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HeaderSectionTitle extends StatelessWidget {
  final String title;
  const HeaderSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        Icon(
          Iconsax.arrow_down_1,
          color: Colors.grey,
          size: 15,
        )
      ],
    );
  }
}
