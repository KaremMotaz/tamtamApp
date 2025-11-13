import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import 'ad_carousel_item.dart';
import '../shared_widgets/custom_animated_indicator.dart';
import '../shared_widgets/custom_carousel_slider.dart';

class AdvertisementSection extends StatefulWidget {
  const AdvertisementSection({super.key});

  @override
  State<AdvertisementSection> createState() => _AdvertisementSectionState();
}

class _AdvertisementSectionState extends State<AdvertisementSection> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: mockAdvertisements,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
          itemBuilder: (path) {
            return AdCarouselItem(path: path);
          },
        ),
        const SizedBox(height: 12),
        CustomAnimatedIndicator(
          activeIndex: activeIndex,
          count: mockAdvertisements.length,
        ),
      ],
    );
  }
}
