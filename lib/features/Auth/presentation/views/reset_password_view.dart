import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../widgets/reset_password_form.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Create New Password",
                  style: AppStyles.bold30.copyWith(color: AppColors.darkGrey),
                ),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Your new password must be unique from those previously used.",
                  style: AppStyles.medium15.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(child: ResetPasswordForm()),
            ],
          ),
        ),
      ),
    );
  }
}
