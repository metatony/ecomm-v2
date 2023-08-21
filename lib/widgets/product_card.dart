// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    this.onTap,
    this.onTapp,
    required this.index,
  });

  final String image, title, description;
  final num price;
  final Function()? onTap, onTapp;
  final int index;

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '\$$price'.txt(),
                IconButton(
                  onPressed: onTapp,
                  icon: Icon(
                    FeatherIcons.heart,
                    size: 15,
                    color: provider.products[index].isLiked == true
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
