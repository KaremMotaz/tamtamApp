import 'package:flutter/material.dart';

class HomeNavigationController {
  int selectedIndex = 2;
  final PageController pageController = PageController(initialPage: 2);

  void dispose() {
    pageController.dispose();
  }

  void onItemTapped(int index, VoidCallback updateUI) {
    selectedIndex = index;
    updateUI();
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index, VoidCallback updateUI) {
    selectedIndex = index;
    updateUI();
  }
}
