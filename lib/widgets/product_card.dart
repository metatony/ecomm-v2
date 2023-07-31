// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    this.onTap,
    this.onTapp, required this.description,
  });

  final String image, title, description;
  final num price;
  final Function()? onTap, onTapp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        //width: 161.w,
        height: 220.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.network(image, fit: BoxFit.cover)),
            SizedBox(height: 8.h),
            title.txt(maxLines: 2),
            SizedBox(height: 3.h),
            InkWell(
              onTap: onTapp,
              child: '\$$price'.txt(),
            ),
          ],
        ),
      ),
    );
  }
}
