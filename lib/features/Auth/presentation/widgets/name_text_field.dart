import 'package:flutter/material.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class NameTextField extends StatelessWidget {
  final TextEditingController nameController;
  const NameTextField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Name", style: AppStyles.medium15),
        ),
        AppTextFormField(
          textInputType: TextInputType.name,
          hintText: "Enter Your Name",
          controller: nameController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your name";
            }
            return null;
          },
        ),
      ],
    );
  }
}


