import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class ConfirmPasswordTextField extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const ConfirmPasswordTextField({
    super.key,
    required this.passwordController,
    required this.confirmPasswordController,
  });

  @override
  State<ConfirmPasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<ConfirmPasswordTextField> {
  bool isConfirmPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Confirm Password", style: AppStyles.medium15),
        ),
        AppTextFormField(
          hintText: "Enter Your Password",
          isObscureText: isConfirmPasswordObscureText,
          controller: widget.confirmPasswordController,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isConfirmPasswordObscureText = !isConfirmPasswordObscureText;
              });
            },
            icon: Icon(
              isConfirmPasswordObscureText
                  ? Icons.visibility_off
                  : Icons.visibility,
              color: AppColors.mainBlue,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your new password again";
            }
            if (value != widget.passwordController.text) {
              return "Passwords do not match";
            }
            return null;
          },
        ),
      ],
    );
  }
}
