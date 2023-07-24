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
      child: Center(
        child: Text.rich(
          TextSpan(
            text: 'Already a member?',
            style: TextStyle(color: Colors.grey),
            children: const [
              TextSpan(
                text: ' Log In',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
