import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_select_container.dart';
import 'login_form_widget.dart';
import 'signup_form_widget.dart';

class AuthSection extends StatefulWidget {
  const AuthSection({super.key});

  @override
  State<AuthSection> createState() => _AuthSectionState();
}

class _AuthSectionState extends State<AuthSection> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() => showLogin = true),
              child: CustomSelectContainer(
                isSelected: showLogin,
                label: "Login",
                buttonWidth: 121,
              ),
            ),
            SizedBox(width: 38),
            GestureDetector(
              onTap: () => setState(() => showLogin = false),
              child: CustomSelectContainer(
                isSelected: !showLogin,
                label: "Sign up",
                buttonWidth: 121,
              ),
            ),
          ],
        ),
        if (showLogin) const LoginFormWidget() else const SignupFormWidget(),
      ],
    );
  }
}
