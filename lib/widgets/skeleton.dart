
import '../utils/exports.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,

      highlightColor: Colors.grey[100]!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(
              height: 220.h,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(color: Colors.white, width: 150.w, height: 170.h),
                    SizedBox(height: 8.h),
                    Container(color: Colors.white, width: 150.w, height: 10.h),
                    SizedBox(height: 5.h),
                    Container(color: Colors.white, width: 150.w, height: 10.h),
                  ],
                ),
            ),
          ),
            Expanded(
              child: SizedBox(
                height: 220.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(color: Colors.white, width:150.w, height: 170.h),
                    SizedBox(height: 8.h),
                    Container(color: Colors.white, width: 150.w, height: 10.h),
                    SizedBox(height: 5.h),
                    Container(color: Colors.white, width: 150.w, height: 10.h),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}