import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'confirm_password_text_field.dart';
import 'new_password_text_field.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _PinInputFormState();
}

class _PinInputFormState extends State<ResetPasswordForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Spacer(),
              NewPasswordTextField(
                newPasswordController: newPasswordController,
              ),
              SizedBox(height: 55.h),
              ConfirmPasswordTextField(
                confirmPasswordController: confirmPasswordController,
                passwordController: newPasswordController,
              ),
              Spacer(),
              AppTextButton(
                onPressed: () {
                  validateThenResetPassword(context);
                },
                buttonText: "Reset Password",
                borderRadius: 25,
                buttonWidth: double.infinity,
                verticalPadding: 0,
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenResetPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).pushReplacement(Routes.resetPasswordSuccessView);
    }
  }
}
