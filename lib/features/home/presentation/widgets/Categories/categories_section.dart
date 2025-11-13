import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/routing/routes.dart';
import '../../../data/models/category_model.dart';
import 'categories_list_view.dart';
import '../shared_widgets/section_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = CategoryModel.categories;
    return Column(
      children: [
        SectionHeader(
          title: 'Categories',
          onTap: () {
            context.push(Routes.categoriesView);
          },
        ),
        const SizedBox(height: 20),
        CategoriesListView(categories: categories),
      ],
    );
  }
}
