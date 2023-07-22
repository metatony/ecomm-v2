// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(FeatherIcons.arrowLeft, color: Colors.black),
        title: Text('Details', style: TextStyle(color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w600)),
        actions:  [
          Icon(FeatherIcons.bell, color: Colors.black),
          SizedBox(width: 25.w),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            //! product image & description
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 14.h),
                  SizedBox(
                    height: 368.h,
                    child: Image.asset(
                      'assets/images/image 1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 14.h),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Regular fit slogan',
                        style: TextStyle(fontSize: 24.sp,
                        fontWeight: FontWeight.w600,),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:  [
                            Icon(FeatherIcons.star, color: Colors.orange),
                            SizedBox(width: 10.w),
                            Text('4.5/5 (45 reviews)'),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        Text(
                            'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.'),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
