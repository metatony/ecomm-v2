// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text.rich(
        TextSpan(
          text: 'Already a member?',
          style: TextStyle(color: Colors.grey),
          children:  [
            TextSpan(
              text: ' Log In',
              style: TextStyle().textStyling(black, FontWeight.w600, null),
            ),
          ],
        ),
      ).center(),
    );
  }
}