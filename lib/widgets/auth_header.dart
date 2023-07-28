// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25.h),
          Text(title,
              style: TextStyle().textStyling(null, FontWeight.w600, 24.sp)),
          SizedBox(height: 5.h),
          Text(subTitle,
              style: TextStyle().textStyling(null, FontWeight.w400, 12.sp)),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
