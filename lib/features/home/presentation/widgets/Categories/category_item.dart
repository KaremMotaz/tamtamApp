import 'package:flutter/material.dart';
import '../../../data/models/category_model.dart';
import '../../../../../../core/theming/app_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category.name,
              overflow: TextOverflow.ellipsis,
              style: AppStyles.semiBold15,
            ),
            SizedBox(width: 4),
            Transform.scale(
              scale: 1.2,
              child: Image.asset(category.image, fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
