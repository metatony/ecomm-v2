import 'package:ecommerce_app/utils/exports.dart';

List<Map<String, dynamic>> bottomBar = [
  {
    'page': 'Home',
    'icon': FeatherIcons.home,
    'body': const HomePage(),
  },
  {
    'page': 'Saved',
    'icon': FeatherIcons.heart,
    'body': const HomePage(),
  },
  {
    'page': 'Cart',
    'icon': FeatherIcons.shoppingCart,
    'body': const HomePage(),
  },
  {
    'page': 'Settings',
    'icon': FeatherIcons.settings,
    'body': const HomePage(),
  }
];

