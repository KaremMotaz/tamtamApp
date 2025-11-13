import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/theming/app_colors.dart';

class CustomAnimatedIndicator extends StatelessWidget {
  const CustomAnimatedIndicator({
    super.key,
    required this.activeIndex,
    required this.count,
  });

  final int activeIndex;
  final int count;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: const WormEffect(
        activeDotColor: AppColors.purple,
        dotColor: AppColors.lighterGrey,
        dotHeight: 5,
        dotWidth: 5,
        spacing: 6,
      ),
    );
  }
}
