// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 10.h),
          SizedBox(
            height: 368.h,
            child: Image.asset(
              'assets/images/image 1.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'Regular fit Slogan'.txt(fontSize: 24.sp),
               
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
                'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.'.txt(),
                SizedBox(height: 15.h),
              ],
            ),
          )
        ],
      ),
    );
  }
}