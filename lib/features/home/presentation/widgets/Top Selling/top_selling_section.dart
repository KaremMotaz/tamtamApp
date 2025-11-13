import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/routes.dart';
import '../../../data/models/products_model.dart';
import '../Top%20Selling/top_selling_products_list_view.dart';
import '../shared_widgets/section_header.dart';

class TopSellingSection extends StatelessWidget {
  const TopSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> topSellingProducts =
        ProductsModel.topSellingProducts;

    return Column(
      children: [
        SectionHeader(
          title: 'Top Selling',
          onTap: () {
            context.push(Routes.topSellingProductsView);
          },
        ),
        const SizedBox(height: 20),
        TopSellingProductsListView(topSellingProducts: topSellingProducts),
      ],
    );
  }
}
