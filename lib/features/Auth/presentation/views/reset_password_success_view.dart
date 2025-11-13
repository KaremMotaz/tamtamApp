import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class ResetPasswordSuccessView extends StatelessWidget {
  const ResetPasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Reset Password Is Done !",
                style: AppStyles.bold20.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 85),
                child: Image.asset(AppAssets.done),
              ),
              SizedBox(height: 51.h),
              Text(
                "Your password has been changed successfully.",
                textAlign: TextAlign.center,
                style: AppStyles.medium15.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              AppTextButton(
                onPressed: () {
                  GoRouter.of(context).go(Routes.authView);
                },
                buttonText: "Back to login",
                borderRadius: 25,
                buttonWidth: double.infinity,
                verticalPadding: 0,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
