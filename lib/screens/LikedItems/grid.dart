import 'package:ecommerce_app/utils/exports.dart';

class LikedItemsGrid extends StatelessWidget {
  const LikedItemsGrid({
    super.key,
    required this.provider,
  });

  final NotifierState provider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: provider.likedItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 5.h,
          mainAxisExtent: 220.h,
        ),
        itemBuilder: (context, int index) {
          return ProductCard(
            image: provider.likedItems[index].image,
            price: provider.likedItems[index].price,
            title: provider.likedItems[index].title,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            ),
          );
        },
      ),
    );
  }
}