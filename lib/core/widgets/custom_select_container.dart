import 'package:flutter/material.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class CustomSelectContainer extends StatelessWidget {
  const CustomSelectContainer({
    super.key,
    required this.isSelected,
    required this.label,
    this.buttonWidth,
  });

  final String label;
  final bool isSelected;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: buttonWidth ?? double.infinity,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffe7f8fe) : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: isSelected ? AppColors.mainBlue : AppColors.lightGrey,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: AppStyles.medium15.copyWith(
            color: isSelected ? AppColors.mainBlue : Color(0xff757575),
          ),
        ),
      ),
    );
  }
}
