import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tam_tam_app/core/theming/app_assets.dart';
import 'package:tam_tam_app/core/theming/app_styles.dart';
import '../theming/app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title});
  final String? title;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        widget.title ?? "",
        style: AppStyles.medium25.copyWith(color: AppColors.darkGrey),
      ),
      leading: context.canPop()
          ? InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () => context.canPop(),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.moreLighterGrey,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppAssets.arrowBack),
                  ),
                ),
              ),
            )
          : SizedBox.shrink(),
    );
  }
}
