import 'dart:convert';

import 'package:ecommerce_app/utils/exports.dart';
import 'package:http/http.dart' as http;

class NotifierState extends ChangeNotifier {
  List<Product> products = [];
  List likedItems = [];
  List cartItems = [];
  int _counter = 0;
  int get counter => _counter;

  // to maintain one state
  static final NotifierState _instance = NotifierState._internal();
  factory NotifierState() => _instance;
  NotifierState._internal();

  // add products to liked page
  void addLikedProducts(int index) {
    likedItems.add(products[index]);
    notifyListeners();
  }

  // add products to cart page
  void addToCart(int index) {
    cartItems.add(products[index]);
    notifyListeners();
  }

  // add liked products to liked page
  void addLikedItemsToCart(int index) {
    cartItems.add(likedItems[index]);
    notifyListeners();
  }

  // delete items from cart
  void removeItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  
  }

  // increment item
  void increment() {
    _counter++;
    notifyListeners();
  }

  //decement item
  void decrement() {
    _counter--;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    String url = 'https://fakestoreapi.com/products';

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (var eachProduct in jsonData) {
        final productList = Product(
          title: eachProduct['title'] ?? 'No data available',
          price: eachProduct['price'] ?? 'No data available',
          description: eachProduct['description'] ?? 'No data available',
          category: eachProduct['category'] ?? 'No data available',
          image: eachProduct['image'] ?? 'No data available',
        );
        products.add(productList);
        //print(jsonData);
      }
    } else {
      throw Exception('failed to fetch data');
    }
  }
}
