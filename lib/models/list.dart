// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/cart/cartpage.dart';
import 'package:ecommerce_app/screens/LikedItems/liked_page.dart';
import 'package:ecommerce_app/screens/homepage/homepage.dart';
import 'package:ecommerce_app/utils/exports.dart';

List<Map<String, dynamic>> bottomBar = [
  {
    'page': 'Home',
    'icon': AssetImage('assets/images/home-line.png'),
    'body': const HomePage(),
  },
  {
    'page': 'Saved',
    'icon': AssetImage('assets/images/activity-heart.png'),
    'body': const LikedPage(),
  },
  {
    'page': 'Cart',
    'icon': AssetImage('assets/images/shopping-bag-03.png'),
    'body': const CartPage(),
  },
];

List productSize = ['S', 'M', 'L'];
