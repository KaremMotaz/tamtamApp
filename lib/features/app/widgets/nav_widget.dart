import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/theming/app_styles.dart';
import '../../../../core/theming/app_colors.dart';

class NavWidget extends StatelessWidget {
  const NavWidget({
    super.key,
    required this.selectedIndex,
    required this.icons,
    required this.index,
    required this.iconsNames,
  });

  final int selectedIndex;
  final int index;
  final List<String> icons;
  final List<String> iconsNames;
  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;
    return Column(
      children: [
        SvgPicture.asset(
          icons[index],
          width: 26,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.mainBlue : AppColors.lighterGrey,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(height: 4),
        Text(
          iconsNames[index],
          style: AppStyles.medium12.copyWith(
            color: isSelected ? AppColors.mainBlue : Colors.transparent,
          ),
        ),
      ],
    );
  }
}
