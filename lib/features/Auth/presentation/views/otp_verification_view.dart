import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/pin_input_form.dart';

class OtpVerificationView extends StatelessWidget {
  final bool isForResetPassword;

  const OtpVerificationView({super.key, required this.isForResetPassword});

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
                  "OTP Verification",
                  style: AppStyles.bold30.copyWith(color: AppColors.darkGrey),
                ),
              ),
              const SizedBox(height: 15),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Enter the verification code we just sent on \nyour Phone number.",
                  style: AppStyles.medium15.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Expanded(child: PinInputForm(isForResetPassword: isForResetPassword)),
            ],
          ),
        ),
      ),
    );
  }
}
