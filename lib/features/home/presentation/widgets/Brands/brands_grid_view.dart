import 'package:flutter/material.dart';
import 'package:tam_tam_app/core/constants/constants.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/Brands/brand_card.dart';

class BrandsGridView extends StatelessWidget {
  const BrandsGridView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> brands = mockBrands;
    return SizedBox.expand(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: GridView.builder(
          itemCount: brands.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 47,
            mainAxisSpacing: 16,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, index) {
            return BrandCard(brand: brands[index]);
          },
        ),
      ),
    );
  }
}
