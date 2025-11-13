import 'package:flutter/cupertino.dart';
import '../../../../core/theming/app_assets.dart';

class CategoryModel {
  final String id;
  final Color color;
  final String name;
  final String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.color,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: '1',
      name: 'Ride-on and \nscooters',
      image: AppAssets.rideOnAndScooters,
      color: Color(0xffD2F1FF),
    ),
    CategoryModel(
      id: '2',
      name: 'Play Sets',
      image: AppAssets.playSets,
      color: Color(0xffFFF8D0),
    ),
  ];
}
