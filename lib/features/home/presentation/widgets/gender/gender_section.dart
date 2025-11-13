import 'package:flutter/material.dart';
import 'package:tam_tam_app/core/widgets/slide_in_animation.dart';

import '../../../../../core/theming/app_assets.dart';
import 'gender_card.dart';

class GenderSection extends StatelessWidget {
  const GenderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SlideInAnimation(
            fromRight: false,
            child: GenderCard(image: AppAssets.boysCard, label: "Boys"),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: SlideInAnimation(
            child: GenderCard(image: AppAssets.girlsCard, label: "Girls"),
          ),
        ),
      ],
    );
  }
}
