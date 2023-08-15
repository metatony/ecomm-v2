// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/utils/exports.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key, required this.text, this.ontap, required this.questionText,
  });

  final String text, questionText;
  
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: ontap,
        child: Text.rich(
          TextSpan(
            text: questionText,
            style: TextStyle(color: Colors.grey),
            children: [
              TextSpan(
                  text: text,
                  style: TextStyle(color: black, fontWeight: FontWeight.w600)),
            ],
          ),
        ).center(),
      ),
    );
  }
}
