// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({super.key});

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
            'Liked Products'.txt(fontSize: 24.sp, fontWeight: FontWeight.w600),
        actions: [
          Icon(FeatherIcons.bell),
          SizedBox(width: 25.w),
        ],
      ),
      body: SafeArea(
        child: provider.likedItems.isEmpty
            ? 'You have no liked item'.txt().center()
            : ListView(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                children: [
                  SizedBox(height: 20.h),
                  LikedItemsGrid(provider: provider),
                ],
              ),
      ),
    );
  }
}
