import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/utils/exports.dart';
import 'package:http/http.dart' as http;

class NotifierState extends ChangeNotifier {
  List<Product> products = [];
  List likedItems = [];
  List cartItems = [];

  // to maintain one state
  static final NotifierState _instance = NotifierState._internal();
  factory NotifierState() => _instance;
  NotifierState._internal();

  // add products to liked page
  void addLikedProducts(int index) {
    products[index].isLiked = !products[index].isLiked;
    if (products[index].isLiked) {
    likedItems.add(products[index]);
  } else {
    likedItems.remove(products[index]);
  }

    //likedItems.add(products[index]);
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
  void increment(int index) {
    cartItems[index].quantity++;
    notifyListeners();
  }

  //decement item
  void decrement(int index) {
    if (cartItems[index].quantity > 0) {
      cartItems[index].quantity--;
    }
    if (cartItems[index].quantity <= 0) {
      removeItem(index);
    }
    notifyListeners();
  }

  //calculate total price
  String calculateTotalPrice() {
    num totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += cartItems[i].price * cartItems[i].quantity;
    }
    notifyListeners();
    return totalPrice.toInt().toString();
  }

  Future fetchProducts() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      firestore.collection('products').snapshots().listen((snapshot) {
        products.clear(); // Clear the existing list before adding new data

        for (var doc in snapshot.docs) {
          Product product = Product(
            isLiked: false,
            title: doc['title'],
            price: doc['price'],
            category: doc['category'],
            description: doc['description'],
            image: doc['image'],
          );

          products.add(product);
        }

        notifyListeners();
      });
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  //API fetch method
  // Future<void> fetchProducts() async {
  //   String url = 'https://fakestoreapi.com/products';

  //   var response = await http.get(Uri.parse(url));
  //   var jsonData = jsonDecode(response.body);

  //   if (response.statusCode == 200) {
  //     for (var eachProduct in jsonData) {
  //       final productList = Product(
  //         title: eachProduct['title'] ?? 'No data available',
  //         price: eachProduct['price'] ?? 'No data available',
  //         description: eachProduct['description'] ?? 'No data available',
  //         category: eachProduct['category'] ?? 'No data available',
  //         image: eachProduct['image'] ?? 'No data available',
  //       );
  //       products.add(productList);
  //       //print(jsonData);
  //     }
  //   } else {
  //     throw Exception('failed to fetch data');
  //   }
  // }
}
