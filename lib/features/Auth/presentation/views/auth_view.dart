import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/gradient_container.dart';
import '../../../../core/widgets/slide_animation.dart';
import '../widgets/auth_section.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            GradientContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  SlideAnimation(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: Image.asset(AppAssets.auth),
                    ),
                  ),
                  Text("Come and Join us", style: AppStyles.bold20),
                  Text(
                    "We are pleased to have you join us.",
                    style: AppStyles.regular12.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                  SizedBox(height: 38.h),
                  const AuthSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
