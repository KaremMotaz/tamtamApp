import 'package:flutter/material.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class PhoneTextField extends StatelessWidget {
  final TextEditingController phoneNumberController;
  const PhoneTextField({super.key, required this.phoneNumberController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Phone Number", style: AppStyles.medium15),
        ),
        AppTextFormField(
          textInputType: TextInputType.phone,
          hintText: "Enter Phone Number",
          controller: phoneNumberController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your phone number";
            }
            if (!AppRegex.isPhoneNumberValid(value)) {
              return "Please enter a valid phone number";
            }
            return null;
          },
        ),
      ],
    );
  }
}
