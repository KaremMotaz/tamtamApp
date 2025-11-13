import 'package:flutter/material.dart';
import '../views/brands_view.dart';
import '../views/cart_view.dart';
import '../views/discounts_view.dart';
import '../views/profile_view.dart';
import '../../home/presentation/views/home_view.dart';

class MainPageView extends StatelessWidget {
  final PageController controller;
  final Function(int) onPageChanged;

  const MainPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: const [
        DiscountsView(),
        CartView(),
        HomeView(),
        BrandsView(),
        ProfileView(),
      ],
    );
  }
}
