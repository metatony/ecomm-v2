// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/LikedItems/grid.dart';
import 'package:ecommerce_app/utils/exports.dart';

class LikedPage extends StatelessWidget {
  LikedPage({super.key});

  bool cartEmpty = true;

  @override
  Widget build(BuildContext context) {
    NotifierState provider = Provider.of<NotifierState>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Liked Products',
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(FeatherIcons.bell),
          SizedBox(width: 25.w),
        ],
      ),
      body: SafeArea(
        child: provider.likedItems.isEmpty
            ? Center(child: Text('You have no liked item'))
            : ListView(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                children: [
                  LikedItemsGrid(provider: provider),
                ],
              ),
      ),
    );
  }
}
