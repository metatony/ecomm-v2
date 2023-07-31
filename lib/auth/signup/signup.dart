// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/screens/homepage/components/bottom_bar.dart';
import 'package:ecommerce_app/utils/exports.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            //! header
            AuthHeader(
              title: 'Create an account',
              subTitle: 'Let\'s create your account',
            ),

            //! form
            SizedBox(
              width: double.infinity,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'Full name'.txt(fontWeight: FontWeight.w600),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: formBorder,
                        contentPadding: EdgeInsets.all(15),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter your full name',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    //!email
                    'Email'.txt(fontWeight: FontWeight.w600),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: formBorder,
                        contentPadding: EdgeInsets.all(15),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter your email address',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(height: 20.h),

                    //!password
                    'Password'.txt(fontWeight: FontWeight.w600),

                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: formBorder,
                        contentPadding: EdgeInsets.all(15),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter your password',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                    ),
                    SizedBox(height: 25.h),
                  ],
                ),
              ),
            ),

            //! signup buttons
            SignUpButton(),
            Button(
              text: google,
              color: white,
              icon: FeatherIcons.aperture,
              textColor: black,
              iconColor: black,
            ),
            SizedBox(height: 10.h),
            Button(
              text: anonymous,
              color: blue,
              icon: FeatherIcons.aperture,
              textColor: white,
              iconColor: white,
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      duration: Duration(milliseconds: 600),
                      child: BottomBar(),
                      type: PageTransitionType.rightToLeft),
                );
              },
            ),
            SizedBox(height: 30.h),

            Footer(),
          ],
        ),
      ),
    );
  }
}
