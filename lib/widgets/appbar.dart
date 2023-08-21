// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:ecommerce_app/utils/exports.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.appBar,
    required this.title,
    required this.backarrow,
  });

  final AppBar appBar;
  final String title;
  final bool backarrow;

  @override
  Widget build(BuildContext context) {
    final authenticate = AuthService();
    return Consumer<NotifierState>(
      builder: (context, value, child) => AppBar(
        automaticallyImplyLeading: backarrow,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: title.txt(fontWeight: FontWeight.w600, fontSize: 24.sp),
        actions: [
          //sign out the user

          IconButton(
            onPressed: () async {
              await authenticate.signOut();

              // Navigate to the SignUp screen after signing out
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            icon: Icon(FeatherIcons.user),
            
          ),
          //'logout'.txt().center(),
          SizedBox(width: 25.w),
        ],
        // ),

        // ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
          //Stack(
          //alignment: Alignment.center,
          // children: [
 //'logout'.txt().center(),
          // if (value.cartItems.isNotEmpty)
          //   Positioned(
          //     top: 5,
          //     right: 20,
          //     child: Container(
          //       padding: const EdgeInsets.all(2),
          //       height: 20,
          //       width: 20,
          //       decoration: BoxDecoration(
          //         color: black,
          //         shape: BoxShape.circle,
          //         //border: Border.all(width: 1.3, color: white),
          //       ),
          //       child: value.cartItems.length.toString().txt(
          //           color: white,
          //           fontSize: 10.sp,
          //           fontWeight: FontWeight.bold).center(),
          //     ),
          //   ),