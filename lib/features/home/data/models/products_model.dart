import '../../../../core/theming/app_assets.dart';

class ProductsModel {
  final String name;
  final String image;
  final String description;
  final String price;
  final double? discount;
  final double iqd;
  final double? lastIqd;

  ProductsModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.iqd,
    this.discount,
    this.lastIqd,
  });

  // Top Selling
  static List<ProductsModel> topSellingProducts = [
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.rainbocorns,
      description: 'The most popular toy in the world',
      price: '10\$',
      iqd: 700,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.mareo,
      description: 'The most popular toy in the world',
      price: '20\$',
      iqd: 800,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.toy,
      description: 'The most popular toy in the world',
      price: '15\$',
      iqd: 600,
    ),
  ];

  // Hot Offers
  static List<ProductsModel> hotOffersProducts = [
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.rainbocorns,
      description: 'The most popular toy in the world',
      price: '10\$',
      discount: 10,
      iqd: 700,
      lastIqd: 1000,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.mareo,
      description: 'The most popular toy in the world',
      price: '20\$',
      discount: 10,
      iqd: 800,
      lastIqd: 900,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.toy,
      description: 'The most popular toy in the world',
      price: '15\$',
      discount: 10,
      iqd: 600,
      lastIqd: 800,
    ),
  ];
  // Babies
  static List<ProductsModel> babiesProducts = [
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.rainbocorns,
      description: 'The most popular toy in the world',
      price: '10\$',
      iqd: 700,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.mareo,
      description: 'The most popular toy in the world',
      price: '20\$',
      iqd: 800,
    ),
    ProductsModel(
      name: 'Rainbocorns Fairycorn Prin.....',
      image: AppAssets.toy,
      description: 'The most popular toy in the world',
      price: '15\$',
      iqd: 600,
    ),
  ];
}
