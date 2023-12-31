// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.iconColor,
    this.onTap,
  });

  final String text;
  final Color color, iconColor, textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53.h,
        width: 341.w,
        decoration: BoxDecoration(
            border: Border.all(
              width: 1.w,
              color: Color.fromARGB(255, 222, 220, 220),
            ),
            color: color,
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   icon,
            //   color: iconColor,
            // ),
            SizedBox(width: 10.w),
            text.txt(color: textColor)
          ],
        ),
      ),
    );
  }
}
