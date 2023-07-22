import 'package:ecommerce_app/utils/exports.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({
    super.key,
    required this.size,
  });

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.25.r),
        border: Border.all(width: 1.w, color: Colors.grey),
      ),
      child: Center(child: Text(size, style: TextStyle(fontSize: 20.sp))),
    );
  }
}