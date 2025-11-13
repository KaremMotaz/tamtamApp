import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/theming/app_assets.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.searchIconColor,
    this.filterContainerColor,
  });

  final Color? searchIconColor;
  final Color? filterContainerColor;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: "Search anything....",
      validator: (value) {},
      prefixIcon: Padding(
        padding: const EdgeInsets.only(left: 17, right: 10),
        child: SvgPicture.asset(
          AppAssets.search,
          colorFilter: ColorFilter.mode(
            searchIconColor ?? AppColors.purple,
            BlendMode.srcIn,
          ),
        ),
      ),

      suffixIcon: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: filterContainerColor ?? AppColors.mainBlue,
            ),
            child: SvgPicture.asset(AppAssets.filter, width: 24, height: 24),
          ),
        ),
      ),
    );
  }
}
