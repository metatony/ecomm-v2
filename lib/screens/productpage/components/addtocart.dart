// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.price,
    required this.currentIndex, required this.onTap,
  });

  final num price;
  final int currentIndex;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Price'.txt(fontSize: 16.sp),
          SizedBox(height: 2.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              '\$$price'
                  
                  .txt(fontSize: 24.sp, fontWeight: FontWeight.w600),

              //! Add to Cart Button
              GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 55.h,
                  width: 191.w,
                  decoration: BoxDecoration().curvedRadius(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FeatherIcons.shoppingCart, color: Colors.white),
                      SizedBox(width: 5.w),
                      'Add to Cart'.txt(color: Colors.white),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
