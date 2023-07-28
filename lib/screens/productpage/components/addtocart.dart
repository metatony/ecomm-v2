// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Price',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
          SizedBox(height: 2.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PKR1,190',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),

              //! Add to Cart Button
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 55.h,
                  width: 191.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Icon(FeatherIcons.shoppingCart, color: Colors.white),
                      SizedBox(width: 5.w),
                      Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      ),
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
