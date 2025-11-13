import 'package:flutter/material.dart';
import '../../core/widgets/custom_select_container.dart';

class CustomSelectLanguageWidget extends StatefulWidget {
  const CustomSelectLanguageWidget({super.key});

  @override
  State<CustomSelectLanguageWidget> createState() =>
      _CustomSelectLanguageWidgetState();
}

class _CustomSelectLanguageWidgetState
    extends State<CustomSelectLanguageWidget> {
  String selectedLanguage = "English";

  final List<String> languages = ["English", "Arabic", "Kurdish"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: languages.map((lang) {
        final bool isSelected = lang == selectedLanguage;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedLanguage = lang;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 25, right: 70, left: 70),
            child: CustomSelectContainer(isSelected: isSelected, label: lang),
          ),
        );
      }).toList(),
    );
  }
}
