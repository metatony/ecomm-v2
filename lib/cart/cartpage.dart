import '../utils/exports.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: ListView(
        children: [
          SizedBox(height: 15.h),
          Container(),

        ],
      )),
    );
  }
}
