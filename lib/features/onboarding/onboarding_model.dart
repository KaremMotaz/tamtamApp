import '../../../core/theming/app_assets.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });

  static List<OnboardingModel> pages = [
    OnboardingModel(
      image: AppAssets.onboarding,
      title: "Play makes better humans",
      description:
          "Brose and choose from thousands of toy. Every child deserve to play !",
    ),
  ];
}
