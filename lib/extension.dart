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

// extension for border radius
extension CurvedBorder on BoxDecoration {
  BoxDecoration curvedRadius(double borderRadius, Color color) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: color,
    );
  }
}

// extension for textstyles
extension TextStyling on TextStyle {
  TextStyle textStyling( Color? color, FontWeight? fontWeight, double? fontSize) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    );
  }
}
