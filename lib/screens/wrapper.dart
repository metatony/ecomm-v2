// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/extension.dart';
import 'package:ecommerce_app/utils/exports.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  //SizedBox(height: 30.h,),
                  Container(
                    margin: EdgeInsets.only(left: 28.w),
                    width: 315.w,
                    height: 235.h,
                    child: 'Define yourself in your unique way.'
                        .txt(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold,
                            height: 1.0.h,
                            letterSpacing: -3.0)
                        .center(),
                  ),
                ],
              ),
              Positioned(
                right: 0.w,
                bottom: 80.h,
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/unsplash_IchPBHFD0pw.png',
                    height: 680.h,
                    //fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0.h,
                child: Container(
                  color: white,
                  height: 90.h,
                  width: 390.w,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 600),
                              child: SignUp(),
                              type: PageTransitionType.rightToLeft));
                    },
                    child: Container(
                      height: 58.h,
                      width: 341.w,
                      decoration: BoxDecoration().curvedRadius(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          'Get Started'.txt(color: Colors.white),
                          SizedBox(width: 10.w),
                          Icon(
                            FeatherIcons.arrowRight,
                            color: white,
                          ),
                        ],
                      ),
                    ),
                  ).center(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
