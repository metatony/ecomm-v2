import 'package:ecommerce_app/cart/cartpage.dart';
import 'package:ecommerce_app/screens/LikedItems/liked_page.dart';
import 'package:ecommerce_app/screens/homepage/homepage.dart';
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
    'body': const LikedPage(),
  },
  {
    'page': 'Cart',
    'icon': FeatherIcons.shoppingCart,
    'body': const CartPage(),
  },
];

List productSize = ['S', 'M', 'L'];
