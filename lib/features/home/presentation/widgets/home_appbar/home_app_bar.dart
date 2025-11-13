import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Welcome Sara",
          style: AppStyles.semiBold20.copyWith(color: AppColors.darkGrey),
        ),
        SizedBox(width: 8),
        Image.asset(AppAssets.emojiGirl, width: 16, height: 16),
        Spacer(),
        Stack(
          children: [
            Positioned(
              top: 2,
              right: 0,
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(AppAssets.dot),
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(AppAssets.notification),
            ),
          ],
        ),
        SizedBox(width: 20),
        InkWell(onTap: () {}, child: SvgPicture.asset(AppAssets.menu)),
      ],
    );
  }
}
