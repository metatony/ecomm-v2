// ignore_for_file: prefer_const_constructors

import '../utils/exports.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          const Icon(FeatherIcons.bell),
          SizedBox(width: 25.w),
        ],
      ),
      body: SafeArea(
          child: provider.cartItems.isEmpty
              ? 'Your cart is empty'.txt().center()
              : ListView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  children: [
                    SizedBox(height: 15.h),

                    //! cart item container
                    ...List.generate(
                      provider.cartItems.length,
                      (index) => CartItemContainer(
                        image: provider.cartItems[index].image,
                        price: provider.cartItems[index].price,
                        title: provider.cartItems[index].title,
                      ),
                    ),

                    // total

                    //! button
                  ],
                )),
    );
  }
}
