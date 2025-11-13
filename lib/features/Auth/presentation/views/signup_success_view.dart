import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class SignupSuccessView extends StatelessWidget {
  const SignupSuccessView({super.key});

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
                "Signup Successfully!",
                style: AppStyles.bold20.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Image.asset(AppAssets.success),
              ),
              SizedBox(height: 20.h),
              Text(
                "You have successfully registered.You can now browse anything.",
                textAlign: TextAlign.center,
                style: AppStyles.medium15.copyWith(color: AppColors.darkGrey),
              ),
              Spacer(),
              AppTextButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(Routes.authView);
                },
                buttonText: "Login Now!",
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
