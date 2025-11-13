import 'package:flutter/material.dart';
import '../../../data/models/products_model.dart';
import '../shared_widgets/product_card.dart';

class TopSellingProductsListView extends StatelessWidget {
  const TopSellingProductsListView({
    super.key,
    required this.topSellingProducts,
  });
  final List<ProductsModel> topSellingProducts;
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> limitedTopSellingProducts = topSellingProducts
        .take(3)
        .toList();
    return SizedBox(
      height: 245,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: limitedTopSellingProducts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ProductCard(product: limitedTopSellingProducts[index]);
        },
      ),
    );
  }
}
