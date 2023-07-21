import 'package:ecommerce_app/utils/exports.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  final String image, title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 161.w,
      height: 220.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.network(image,  fit: BoxFit.cover)),
          SizedBox(height: 8.h),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          SizedBox(height: 3.h),
          Text(
            price.toString(),
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
