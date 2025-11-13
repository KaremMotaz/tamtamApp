import 'package:flutter/material.dart';
import 'package:tam_tam_app/core/theming/app_colors.dart';
import 'package:tam_tam_app/core/widgets/custom_app_bar.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/boys_and_girls_products/girls_products_grid_view.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/shared_widgets/custom_text_field.dart';

class GirlsProductsView extends StatelessWidget {
  const GirlsProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Girls"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 27),
              CustomTextField(filterContainerColor: AppColors.purple),
              SizedBox(height: 27),
              GirlsProductsGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
