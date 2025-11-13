import 'package:flutter/material.dart';
import 'package:tam_tam_app/core/theming/app_colors.dart';
import 'package:tam_tam_app/core/widgets/custom_app_bar.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/boys_and_girls_products/boys_products_grid_view.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/shared_widgets/custom_text_field.dart';

class BoysProductsView extends StatelessWidget {
  const BoysProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Boys"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 27),
              CustomTextField(searchIconColor: AppColors.mainBlue),
              SizedBox(height: 27),
              BoysProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
