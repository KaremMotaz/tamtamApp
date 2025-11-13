import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'resend_otp_widget.dart';
import 'custom_pinput.dart';

class PinInputForm extends StatefulWidget {
  final bool isForResetPassword;

  const PinInputForm({super.key, required this.isForResetPassword});

  @override
  State<PinInputForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<PinInputForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Spacer(),
            CustomPinput(otpController: otpController),
            Spacer(),
            AppTextButton(
              onPressed: () {
                validateThenVerifyPhoneNumber(context);
              },
              buttonText: "Verify",
              borderRadius: 25,
              buttonWidth: double.infinity,
              verticalPadding: 0,
            ),
            SizedBox(height: 14.h),
            ResendOtpWidget(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  void validateThenVerifyPhoneNumber(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (widget.isForResetPassword) {
        GoRouter.of(context).push(Routes.resetPasswordView);
      } else {
        GoRouter.of(context).go(Routes.signupSuccessView);
      }
    }
  }
}
