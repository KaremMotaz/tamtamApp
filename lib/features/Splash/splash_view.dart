import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../core/theming/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SimpleSplashViewState();
}

class _SimpleSplashViewState extends State<SplashView> {
  double scale = 0.9;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() => scale = 1.2);
    });
    _getInitialRoute();
  }

  Future<void> _getInitialRoute() async {
    await Future.delayed(const Duration(milliseconds: 1600));
    if (mounted) {
      GoRouter.of(context).go(Routes.selectLanguage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 1200),
          curve: Curves.elasticOut,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Image.asset(AppAssets.logo),
          ),
        ),
      ),
    );
  }
}
