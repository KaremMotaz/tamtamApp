import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'phone_text_field.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<ForgotPasswordForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  @override
  void dispose() {
    phoneNumberController.dispose();
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
            PhoneTextField(phoneNumberController: phoneNumberController),
            Spacer(),
            AppTextButton(
              onPressed: () {
                validateThenVerifyCode(context);
              },
              buttonText: "Send Code",
              borderRadius: 25,
              buttonWidth: double.infinity,
              verticalPadding: 0,
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  void validateThenVerifyCode(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).push(Routes.otpVerificationView, extra: true);
    }
  }
}
