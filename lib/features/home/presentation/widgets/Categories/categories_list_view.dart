import 'package:flutter/material.dart';
import '../../../data/models/category_model.dart';
import 'category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> limitedCategories = categories.take(2).toList();
    return SizedBox(
      height: 87,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: limitedCategories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return CategoryItem(category: limitedCategories[index]);
        },
      ),
    );
  }
}
