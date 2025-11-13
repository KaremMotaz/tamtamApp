import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/app_assets.dart';
import '../../core/theming/app_styles.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/gradient_container.dart';
import '../../core/widgets/slide_animation.dart';
import 'custom_select_language_widget.dart';

class SelectLanguageView extends StatelessWidget {
  const SelectLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 90),
                SlideAnimation(child: Image.asset(AppAssets.selectLanguage)),
                Spacer(),
                Text("Select Language", style: AppStyles.bold20),
                SizedBox(height: 38),
                SlideAnimation(begin: 50, child: CustomSelectLanguageWidget()),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: AppTextButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacement(Routes.onboardingView);
                    },
                    buttonText: "Continue",
                    borderRadius: 25,
                    buttonWidth: double.infinity,
                    verticalPadding: 0,
                  ),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
