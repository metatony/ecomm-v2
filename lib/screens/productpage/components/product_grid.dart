// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/utils/exports.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({
    super.key,
  });

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  // List<Product> _products = [];
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
    //_products = provider.products;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);

    return SizedBox(
      width: double.infinity,
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(child: Text('Please wait'))
              : Center(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: _loading ? 4 : snapshot.data!.docs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 5.h,
                      mainAxisExtent: 220.h,
                    ),
                    itemBuilder: (context, int index) {
                      DocumentSnapshot products = snapshot.data!.docs[index];
                      if (_loading) {
                        return Skeleton();
                      } else {
                        return ProductCard(
                          image: products['image'],
                          price: products['price'],
                          title: products['title'],
                          description: products['description'],
                         // isLiked: provider.likedItems.contains(provider.products[index]),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(
                                image: products['image'],
                                price: products['price'],
                                title: products['title'],
                                description: products['description'],
                                currentIndex: index,
                                onTap: () {
                                  provider.addToCart(index);

                                  final snackBar = SnackBar(
                                    content: 'Item has been added to your cart'
                                        .txt(color: white)
                                        .center(),
                                    duration: Duration(seconds: 1),
                                    backgroundColor: black,
                                    padding: EdgeInsets.all(20),
                                    behavior: SnackBarBehavior.floating,
                                  );

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              ),
                            ),
                          ),
                          onTapp: () {
                            
                            provider.addLikedProducts(index);

                          }, index: index,
                        );
                      }
                    },
                  ),
                );
        },
      ),
    );
  }
}
