import 'package:flutter/material.dart';
import 'home_nav_widget.dart';
import '../../../../core/theming/app_assets.dart';
import 'nav_widget.dart';

class HomeNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const HomeNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      AppAssets.discount,
      AppAssets.cart,
      AppAssets.home,
      AppAssets.brands,
      AppAssets.person,
    ];

    final List<String> iconsNames = [
      "Discount",
      "Cart",
      "Home",
      "Brands",
      "Profile",
    ];

    return BottomAppBar(
      color: Colors.white,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 8),
      elevation: 8,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Image.asset(AppAssets.bottomNavBarShape),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                icons.length,
                (index) => GestureDetector(
                  onTap: () => onTap(index),
                  child: index == 2
                      ? HomeNavWidget(isSelected: selectedIndex == index)
                      : Padding(
                          padding: EdgeInsets.only(
                            top: selectedIndex == index ? 34 : 37,
                          ),
                          child: NavWidget(
                            selectedIndex: selectedIndex,
                            icons: icons,
                            index: index,
                            iconsNames: iconsNames,
                          ),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
