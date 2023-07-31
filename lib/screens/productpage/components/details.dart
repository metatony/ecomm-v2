// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          SizedBox(
            height: 368.h,
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.txt(fontSize: 24.sp, maxLines: 1),
                SizedBox(height: 5.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    SizedBox(width: 10.w),
                    '4.5/5 (45 reviews)'.txt(),
                  ],
                ),
                SizedBox(height: 15.h),
                description.txt(),
                SizedBox(height: 15.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}
