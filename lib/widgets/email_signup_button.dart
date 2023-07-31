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
                decoration: BoxDecoration().curvedRadius(),
                child: 'Sign Up'.txt(color: Colors.white).center()),
          ),
          sizedHeight(),
          SizedBox(
            width: double.infinity,
            height: 25.h,
            child: 'Or'.txt().center(),
          ),
          sizedHeight(),
        ],
      ),
    );
  }
}
