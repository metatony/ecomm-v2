// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            //!appbar
            HomeAppBar(),
            SizedBox(height: 14.h),

            //! search area
            SearchArea(),
            SizedBox(height: 14.h),

            //!products
            ProductGrid(),
          ],
        ),
      ),
    );
  }
}
