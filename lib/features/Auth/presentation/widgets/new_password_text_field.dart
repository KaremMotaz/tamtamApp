import 'package:flutter/material.dart';
import '../../../../core/helpers/validate_password.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class NewPasswordTextField extends StatefulWidget {
  final TextEditingController newPasswordController;

  const NewPasswordTextField({super.key, required this.newPasswordController});

  @override
  State<NewPasswordTextField> createState() => _NewPasswordTextFieldState();
}

class _NewPasswordTextFieldState extends State<NewPasswordTextField> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3, left: 10),
          child: Text("New Password", style: AppStyles.medium15),
        ),
        AppTextFormField(
          hintText: "Enter Your New Password",
          isObscureText: isPasswordObscureText,
          controller: widget.newPasswordController,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            icon: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              color: AppColors.mainBlue,
            ),
          ),
          validator: validatePassword,
        ),
      ],
    );
  }
}
