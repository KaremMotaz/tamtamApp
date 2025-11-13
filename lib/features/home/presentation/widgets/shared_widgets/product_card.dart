import 'package:flutter/material.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../data/models/products_model.dart';
import 'add_product_button.dart';
import 'discount_container.dart';
import 'favourite_widget.dart';
import '../../../../../core/theming/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147,
      padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffF3F3F3), width: 2),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              product.discount == null || product.discount == 0
                  ? const SizedBox.shrink()
                  : DiscountContainer(discount: product.discount!),
              Align(alignment: Alignment.centerRight, child: FavouriteWidget()),
            ],
          ),
          Image.asset(product.image, height: 100, fit: BoxFit.fill),
          const SizedBox(height: 18),
          Text(
            product.name,
            style: AppStyles.medium12,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("IQD: ${product.iqd}", style: AppStyles.medium12),
              AddProductButton(),
            ],
          ),
          product.lastIqd == null || product.lastIqd == 0
              ? const SizedBox.shrink()
              : Text(
                  "IQD: ${product.lastIqd}",
                  style: AppStyles.medium12.copyWith(
                    color: AppColors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
        ],
      ),
    );
  }
}
