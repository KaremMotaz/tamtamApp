import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/routes.dart';
import '../../../data/models/products_model.dart';
import 'babies_products_list_view.dart';
import '../shared_widgets/section_header.dart';

class BabiesSection extends StatelessWidget {
  const BabiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> babiesProducts = ProductsModel.babiesProducts;

    return Column(
      children: [
        SectionHeader(
          title: 'Babies',
          onTap: () {
            context.push(Routes.babiesProductsView);
          },
        ),
        const SizedBox(height: 20),
        BabiesProductsListView(babiesProducts: babiesProducts),
      ],
    );
  }
}
