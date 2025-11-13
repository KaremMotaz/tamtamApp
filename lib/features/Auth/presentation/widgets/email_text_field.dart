import 'package:flutter/material.dart';
import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class EmailTextField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailTextField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Email", style: AppStyles.medium15),
        ),
        AppTextFormField(
          textInputType: TextInputType.emailAddress,
          hintText: "Enter Your Email",
          controller: emailController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your email";
            }
            if (!AppRegex.isEmailValid(value)) {
              return "Please enter a valid email";
            }
            return null;
          },
        ),
      ],
    );
  }
}
