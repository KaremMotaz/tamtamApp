import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import 'iqd_carousel_item.dart';
import '../shared_widgets/custom_animated_indicator.dart';
import '../shared_widgets/custom_carousel_slider.dart';

class IQDSection extends StatefulWidget {
  const IQDSection({super.key});

  @override
  State<IQDSection> createState() => _IQDSectionState();
}

class _IQDSectionState extends State<IQDSection> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: iqdcards,
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
          itemBuilder: (path) {
            return IqdCarouselItem(
              path: path,
              numberOfIqd: numberOfIqd[activeIndex],
            );
          },
        ),
        const SizedBox(height: 12),
        CustomAnimatedIndicator(
          activeIndex: activeIndex,
          count: iqdcards.length,
        ),
      ],
    );
  }
}
