import 'package:flutter/material.dart';
import '../../../../../core/theming/app_styles.dart';

class IqdCarouselItem extends StatelessWidget {
  const IqdCarouselItem({
    super.key,
    required this.path,
    required this.numberOfIqd,
  });

  final String path;
  final int numberOfIqd;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(path, fit: BoxFit.cover, width: double.infinity),
        ),
        Positioned(
          left: 15,
          child: Text(
            "Less Than\n$numberOfIqd IQD",
            style: AppStyles.semiBold28,
          ),
        ),
      ],
    );
  }
}
