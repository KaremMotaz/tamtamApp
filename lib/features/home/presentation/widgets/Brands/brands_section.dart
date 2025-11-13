import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/routing/routes.dart';
import 'brands_list_view.dart';
import '../shared_widgets/section_header.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> brands = mockBrands;

    return Column(
      children: [
        SectionHeader(
          title: 'Brands',
          onTap: () {
            context.push(Routes.brandsView);
          },
        ),
        const SizedBox(height: 20),
        BrandsListView(brands: brands),
      ],
    );
  }
}
