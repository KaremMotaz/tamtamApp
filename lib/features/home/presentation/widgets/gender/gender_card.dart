import 'package:flutter/material.dart';
import '../../../../../core/theming/app_styles.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({super.key, required this.image, required this.label});
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.89,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(image, height: 87),
          Positioned(
            left: 15,
            child: Text(
              label,
              style: AppStyles.bold20.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
