import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {
          context.push(Routes.forgotPasswordView);
        },
        child: Text(
          "Forgot Password?",
          style: AppStyles.medium12.copyWith(color: AppColors.mainBlue),
        ),
      ),
    );
  }
}
