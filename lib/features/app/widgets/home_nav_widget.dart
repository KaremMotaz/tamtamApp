import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theming/app_assets.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';

class HomeNavWidget extends StatelessWidget {
  const HomeNavWidget({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(1, 6),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.mainBlue,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: SvgPicture.asset(
              AppAssets.home,
              width: 20,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          SizedBox(height: 2),
          Text(
            "Home",
            style: AppStyles.medium15.copyWith(
              color: isSelected ? AppColors.mainBlue : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
