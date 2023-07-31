// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/productpage/components/addtocart.dart';
import 'package:ecommerce_app/screens/productpage/components/details.dart';
import 'package:ecommerce_app/screens/productpage/components/product_size.dart';
import 'package:ecommerce_app/utils/exports.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: 'Details'.txt(fontSize: 24.sp, fontWeight: FontWeight.w600),
        actions: [
          Icon(FeatherIcons.bell),
          SizedBox(width: 25.w),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: const [
            //! product image & description
            ProductDetail(),

            //! product size guide
            ProductSize(),

            //! price & add to cart
            AddToCart()
          ],
        ),
      ),
    );
  }
}