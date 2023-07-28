// ignore_for_file: prefer_const_constructors

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
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  _fetchProducts() async {
    setState(() {
      _loading = true;
    });
    await Future.delayed(Duration(seconds: 2), () {});
    NotifierState provider = NotifierState();

    await provider.fetchProducts();
    _products = provider.products;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);

    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: _loading ? 6 : _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 5.h,
          mainAxisExtent: 220.h,
        ),
        itemBuilder: (context, int index) {
          if (_loading) {
            return Skeleton();
          } else {
            return ProductCard(
              image: _products[index].image,
              price: _products[index].price,
              title: _products[index].title,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              ),
              onTapp: () {
                provider.addLikedProducts(index);
              },
            );
          }
        },
      ),
    );
  }
}
