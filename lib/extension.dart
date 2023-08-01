// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

// commo widget helpers
extension WidgetHelpers on Widget {
  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget sizedHeight() {
    return SizedBox(
      height: 10.h,
    );
  }
}

// extension for box decoration
extension CurvedBorder on BoxDecoration {
  BoxDecoration curvedRadius({
    double? borderRadius,
    Color? color,
  }) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
      color: color ?? Colors.black,
     
    );
  }
}

// extension for textstyles
extension TextExtension on String {
  Text txt({
    Color? color,
    double? fontSize,
    height,
    letterSpacing,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
  }) {
    return Text(
      this,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}

//hello world
