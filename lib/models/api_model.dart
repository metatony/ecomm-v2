class Product {
  final String title, category, description, image;
  final num price;
  int quantity;
  bool isLiked;

  Product({
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
    this.quantity = 1,
    this.isLiked = false,
  });
}
