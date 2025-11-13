import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging in, you agree to the ',
        style: AppStyles.medium12.copyWith(color: AppColors.lightGrey),
        children: [
          TextSpan(
            text: 'Terms',
            style: AppStyles.bold12.copyWith(
              color: AppColors.mainBlue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Conditions',
            style: AppStyles.bold12.copyWith(
              color: AppColors.mainBlue,
              decoration: TextDecoration.underline,
            ),

            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
