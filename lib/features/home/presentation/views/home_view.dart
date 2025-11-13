import 'package:flutter/material.dart';
import '../widgets/Babies/babies_section.dart';
import '../widgets/Brands/brands_section.dart';
import '../widgets/Top%20Selling/top_selling_section.dart';
import '../widgets/advertisement/advertisement_section.dart';
import '../widgets/Categories/categories_section.dart';
import '../widgets/shared_widgets/custom_text_field.dart';
import '../widgets/gender/gender_section.dart';
import '../widgets/home_appbar/home_app_bar.dart';
import '../widgets/hot_offers/hot_offers_section.dart';
import '../widgets/iqd_section/iqd_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(31),
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(height: 22),
                CustomTextField(),
                SizedBox(height: 36),
                AdvertisementSection(),
                SizedBox(height: 32),
                GenderSection(),
                SizedBox(height: 40),
                CategoriesSection(),
                SizedBox(height: 34),
                TopSellingSection(),
                SizedBox(height: 34),
                IQDSection(),
                SizedBox(height: 34),
                HotOffersSection(),
                SizedBox(height: 22),
                BrandsSection(),
                SizedBox(height: 24),
                BabiesSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
