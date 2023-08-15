// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.currentIndex,
    this.onTap,
    required this.price,
  });

  final String image, title, description;
  final num price;
  final int currentIndex;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: MyAppBar(appBar: AppBar(), title: 'Detail', backarrow: true,),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            //! product image & description
            ProductDetail(
              description: description,
              image: image,
              title: title,
            ),

            //! product size guide
            ProductSize(),

            //! price & add to cart
            AddToCart(
              currentIndex: currentIndex,
              price: price,
              onTap: onTap,
            )
          ],
        ),
      ),
    );
  }
}
