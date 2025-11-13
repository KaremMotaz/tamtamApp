import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../data/models/products_model.dart';
import '../shared_widgets/section_header.dart';
import 'hot_offers_list_view.dart';

class HotOffersSection extends StatelessWidget {
  const HotOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductsModel> hotOffersProducts =
        ProductsModel.hotOffersProducts;

    return Column(
      children: [
        SectionHeader(
          title: 'Hot Offers',
          onTap: () {
            context.push(Routes.hotOffersView);
          },
        ),
        const SizedBox(height: 20),
        HotOffersListView(hotOffersProducts: hotOffersProducts),
      ],
    );
  }
}
