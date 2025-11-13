import 'package:flutter/material.dart';
import 'brand_card.dart';

class BrandsListView extends StatelessWidget {
  const BrandsListView({super.key, required this.brands});
  final List<String> brands;
  @override
  Widget build(BuildContext context) {
    final List<String> limitedBrands = brands.take(4).toList();
    return SizedBox(
      height: 86,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: limitedBrands.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return BrandCard(brand: limitedBrands[index]);
        },
      ),
    );
  }
}
