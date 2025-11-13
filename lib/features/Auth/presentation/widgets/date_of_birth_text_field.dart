import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class DateOfBirthTextField extends StatelessWidget {
  final TextEditingController dateOfBirthController;
  const DateOfBirthTextField({super.key, required this.dateOfBirthController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 3, left: 10),
          child: Text("Date Of Birth", style: AppStyles.medium15),
        ),
        AppTextFormField(
          hintText: "14/11/2025",
          readOnly: true,
          controller: dateOfBirthController,
          suffixIcon: Transform.scale(
            scale: 0.9,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset(AppAssets.calendar, fit: BoxFit.contain),
            ),
          ),
          validator: (p0) {},
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime(2000),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            );

            if (pickedDate != null) {
              String formattedDate = DateFormat(
                'yyyy-MM-dd',
              ).format(pickedDate);
              dateOfBirthController.text = formattedDate;
            }
          },
        ),
      ],
    );
  }
}
