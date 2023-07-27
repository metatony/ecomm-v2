

//class ProductClass {
  // List<Product> products = [];

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
//}
