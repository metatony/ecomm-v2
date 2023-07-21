// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/api/api_model.dart';
import 'package:ecommerce_app/api/fetch.dart';
import 'package:ecommerce_app/utils/exports.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({
    super.key,
  });

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<Product> _products = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  _fetchProducts() async {
    ProductClass productClass = ProductClass();
    await productClass.fetchProducts();
    _products = productClass.products;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: _loading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              shrinkWrap: true,
              itemCount: _products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5.h,
                mainAxisExtent: 220.h,
              ),
              itemBuilder: (context, int index) {
                return ProductCard(
                  image: _products[index].image,
                  price: _products[index].price,
                  title: _products[index].title,
                );
              },
            ),
    );
  }
}
