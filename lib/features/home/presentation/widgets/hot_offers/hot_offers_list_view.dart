import 'package:flutter/material.dart';
import '../../../data/models/products_model.dart';
import '../shared_widgets/product_card.dart';

class HotOffersListView extends StatelessWidget {
  const HotOffersListView({super.key, required this.hotOffersProducts});
  final List<ProductsModel> hotOffersProducts;
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> limitedHotOffersProducts = hotOffersProducts
        .take(3)
        .toList();
    return SizedBox(
      height: 259,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: limitedHotOffersProducts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ProductCard(product: limitedHotOffersProducts[index]);
        },
      ),
    );
  }
}
