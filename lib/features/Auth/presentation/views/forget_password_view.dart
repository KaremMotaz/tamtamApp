import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/forgot_password_form.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Forget Password",
                  style: AppStyles.bold30.copyWith(color: AppColors.darkGrey),
                ),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Please enter the Phone Number and we will sent to you verification code.",
                  style: AppStyles.medium15.copyWith(color: AppColors.darkGrey),
                ),
              ),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
