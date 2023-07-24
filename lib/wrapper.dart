// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/auth/signup/signup.dart';
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
                  Container(
                    margin: EdgeInsets.only(left: 28.w),
                    width: 315.w,
                    height: 210.h,
                    child: Center(
                      child: Text(
                        'Define yourself in your unique way.',
                        style: TextStyle(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold,
                            height: 1.h,
                            letterSpacing: -3),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                bottom: 80.h,
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/unsplash_IchPBHFD0pw.png',
                    height: 600.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  color: white,
                  height: 90.h,
                  width: 390.w,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Container(
                        height: 58.h,
                        width: 341.w,
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(color: white, fontSize: 16.sp),
                            ),
                            SizedBox(width: 10.w),
                            Icon(FeatherIcons.arrowRight, color: white,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
