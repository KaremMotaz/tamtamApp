import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/animated_appear.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'forgot_password.dart';
import 'password_text_field.dart';
import 'phone_text_field.dart';
import 'terms_and_conditions.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55.h),
          PhoneTextField(phoneNumberController: phoneNumberController),
          SizedBox(height: 25.h),
          PasswordTextField(passwordController: passwordController),
          ForgotPassword(),
          SizedBox(height: 40.h),
          AnimatedAppear(
            child: AppTextButton(
              onPressed: () {
                validateThenLogin(context);
              },
              buttonText: "Login",
              borderRadius: 25,
              buttonWidth: double.infinity,
              verticalPadding: 0,
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TermsAndConditions(),
          ),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).pushReplacement(Routes.loginSuccessView);
    }
  }
}
