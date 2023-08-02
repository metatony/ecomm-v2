import 'package:ecommerce_app/utils/exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.appBar, required this.title,});

  final AppBar appBar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotifierState>(
      builder: (context, value, child) => AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: title.txt(fontWeight: FontWeight.w600, fontSize: 24.sp),
        actions: [
          const ImageIcon(AssetImage('assets/images/shopping-bag-03.png')),
          SizedBox(width: 25.w),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
