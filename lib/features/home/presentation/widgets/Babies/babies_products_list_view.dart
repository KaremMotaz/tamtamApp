import 'package:flutter/material.dart';
import '../../../data/models/products_model.dart';
import '../shared_widgets/product_card.dart';

class BabiesProductsListView extends StatelessWidget {
  const BabiesProductsListView({super.key, required this.babiesProducts});
  final List<ProductsModel> babiesProducts;
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> limitedBabiesProducts = babiesProducts
        .take(3)
        .toList();
    return SizedBox(
      height: 245,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: limitedBabiesProducts.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return ProductCard(product: limitedBabiesProducts[index]);
        },
      ),
    );
  }
}
