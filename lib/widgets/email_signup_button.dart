// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 53.h,
              width: 341.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                  child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            width: double.infinity,
            height: 25.h,
            child: Center(child: Text('Or')),
          ),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }
}
