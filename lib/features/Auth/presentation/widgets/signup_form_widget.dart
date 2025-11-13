import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/animated_appear.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'confirm_password_text_field.dart';
import 'date_of_birth_text_field.dart';
import 'email_text_field.dart';
import 'name_text_field.dart';
import 'password_text_field.dart';
import 'phone_text_field.dart';

class SignupFormWidget extends StatefulWidget {
  const SignupFormWidget({super.key});

  @override
  State<SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    dateOfBirthController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 27.h),
          NameTextField(nameController: nameController),
          SizedBox(height: 20.h),
          DateOfBirthTextField(dateOfBirthController: dateOfBirthController),
          SizedBox(height: 20.h),
          PhoneTextField(phoneNumberController: phoneNumberController),
          SizedBox(height: 20.h),
          EmailTextField(emailController: emailController),
          SizedBox(height: 20.h),
          PasswordTextField(passwordController: passwordController),
          SizedBox(height: 20.h),
          ConfirmPasswordTextField(
            passwordController: passwordController,
            confirmPasswordController: confirmPasswordController,
          ),
          SizedBox(height: 20.h),
          AnimatedAppear(
            child: AppTextButton(
              onPressed: () {
                validateThenSignup(context);
              },
              buttonText: "Sign Up",
              borderRadius: 25,
              buttonWidth: double.infinity,
              verticalPadding: 0,
            ),
          ),
          SizedBox(height: 35.h),
        ],
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (formKey.currentState!.validate()) {
      GoRouter.of(context).push(Routes.otpVerificationView, extra: false);
    }
  }
}
