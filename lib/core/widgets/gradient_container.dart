import 'package:flutter/material.dart';
import '../theming/app_colors.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 286,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.gold.withAlpha(77), AppColors.gold.withAlpha(0)],
        ),
      ),
    );
  }
}
