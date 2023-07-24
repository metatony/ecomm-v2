
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
          Text(title, style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
          SizedBox(height: 5.h),
          Text(subTitle, style: TextStyle(fontSize:12.sp, fontWeight: FontWeight.w400)),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }
}
