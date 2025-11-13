import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class ResendOtpWidget extends StatelessWidget {
  const ResendOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Didn’t received code? ',
        style: AppStyles.medium15.copyWith(color: AppColors.lightGrey),
        children: [
          TextSpan(
            text: 'Resend',
            style: AppStyles.bold12.copyWith(
              color: AppColors.mainBlue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
