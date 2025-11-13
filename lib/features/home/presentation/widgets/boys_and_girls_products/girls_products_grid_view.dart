import 'package:flutter/material.dart';
import 'package:tam_tam_app/features/home/data/models/products_model.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/shared_widgets/product_card.dart';

class GirlsProductsGridView extends StatelessWidget {
  const GirlsProductsGridView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> girlsProducts = ProductsModel.boysProducts;
    return Expanded(
      child: GridView.builder(
        itemCount: girlsProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          return ProductCard(product: girlsProducts[index]);
        },
      ),
    );
  }
}
