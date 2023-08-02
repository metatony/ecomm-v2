// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          'Discover'.txt(fontSize: 32.sp, fontWeight: FontWeight.w600),
          ImageIcon(AssetImage('assets/images/shopping-bag-03.png')),
        ],
      ),
    );
  }
}