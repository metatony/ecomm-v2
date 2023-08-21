// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: white,
      child: SpinKitPulse(color: black,
       duration: Duration(seconds: 2),
      size: 50.0,
      ),
    );
  }
}