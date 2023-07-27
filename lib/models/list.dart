import 'package:ecommerce_app/LikedItems/liked_page.dart';
import 'package:ecommerce_app/homepage/homepage.dart';
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
    'body':  LikedPage(),
  },
  {
    'page': 'Cart',
    'icon': FeatherIcons.shoppingCart,
    //'body': const HomePage(),
  },
];

List productSize = ['S', 'M', 'L'];
