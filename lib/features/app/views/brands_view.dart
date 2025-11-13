import 'package:flutter/material.dart';
import 'package:tam_tam_app/core/widgets/custom_app_bar.dart';
import 'package:tam_tam_app/features/home/presentation/widgets/Brands/brands_grid_view.dart';

class BrandsView extends StatelessWidget {
  const BrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Brands"),
      body: BrandsGridView(),
    );
  }
}
