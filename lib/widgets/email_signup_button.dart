// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/extension.dart';
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
              decoration: BoxDecoration().curvedRadius(10.r, Colors.black),
              child: Text(
                'Sign Up',
                style: TextStyle().textStyling(Colors.white, null, null),
              ).center(),
            ),
          ),
          sizedHeight(),
          SizedBox(
            width: double.infinity,
            height: 25.h,
            child: Text('Or').center(),
          ),
          sizedHeight(),
        ],
      ),
    );
  }
}
