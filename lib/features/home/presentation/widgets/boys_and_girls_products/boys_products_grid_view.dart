import 'package:flutter/material.dart';
import 'package:tam_tam_app/features/home/data/models/products_model.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/shared_widgets/product_card.dart';

class BoysProductsGridView extends StatelessWidget {
  const BoysProductsGridView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> boysProducts = ProductsModel.boysProducts;
    return Expanded(
      child: GridView.builder(
        itemCount: boysProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: boysProducts[index]);
        },
      ),
    );
  }
}
