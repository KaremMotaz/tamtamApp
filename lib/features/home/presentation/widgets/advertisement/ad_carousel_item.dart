import 'package:flutter/material.dart';

class AdCarouselItem extends StatelessWidget {
  const AdCarouselItem({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(path, fit: BoxFit.cover, width: double.infinity),
    );
  }
}
