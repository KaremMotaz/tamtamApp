import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/app_colors.dart';
import '../../core/theming/app_styles.dart';
import '../../core/widgets/animated_appear.dart';
import '../../core/widgets/app_text_button.dart';
import '../../core/widgets/gradient_container.dart';
import '../../core/widgets/slide_animation.dart';
import 'onboarding_model.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> pages = OnboardingModel.pages;
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 90),
                SlideAnimation(child: Image.asset(pages[0].image)),
                Spacer(),
                Text(pages[0].title, style: AppStyles.bold20),
                SizedBox(height: 8),
                Text(
                  pages[0].description,
                  textAlign: TextAlign.center,
                  style: AppStyles.medium15.copyWith(color: AppColors.grey),
                ),
                Spacer(flex: 2),
                AnimatedAppear(
                  child: AppTextButton(
                    onPressed: () {
                      GoRouter.of(context).pushReplacement(Routes.authView);
                    },
                    buttonText: "Next",
                    buttonWidth: double.infinity,
                    borderRadius: 25,
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
