// ignore_for_file: prefer_const_constructors

import '../utils/exports.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);

    return Scaffold(
      appBar: MyAppBar(appBar: AppBar(), title: 'Cart'),
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
                      index: index,
                    ),
                  ),

                  // total
                  SizedBox(height: 30.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Total'.txt(),
                      '\$${provider.calculateTotalPrice()}'
                          .txt(fontWeight: FontWeight.w700)
                    ],
                  )

                  //! button
                ],
              ),
      ),
    );
  }
}
