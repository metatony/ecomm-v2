// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.appBar,
    required this.title,
  });

  final AppBar appBar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (context, value, child) => AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: title.txt(fontWeight: FontWeight.w600, fontSize: 24.sp),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        duration: const Duration(milliseconds: 250),
                        type: PageTransitionType.leftToRight,
                        child: const CartPage()),
                  );
                },
                icon:
                    ImageIcon(AssetImage('assets/images/shopping-bag-03.png')),
              ),
              if (value.cartItems.isNotEmpty)
                Positioned(
                  top: 5,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: black,
                      shape: BoxShape.circle,
                      //border: Border.all(width: 1.3, color: white),
                    ),
                    child: value.cartItems.length.toString().txt(
                        color: white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold).center(),
                  ),
                ),
            ],
          ),
          SizedBox(width: 25.w),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
