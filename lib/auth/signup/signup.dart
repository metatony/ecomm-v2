// ignore_for_file: prefer_const_constructors


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
                    Text('Full name', style: TextStyle(fontWeight: FontWeight.w600)),
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
                    Text('Email', style: TextStyle(fontWeight: FontWeight.w600)),
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
                    Text('Password', style: TextStyle(fontWeight: FontWeight.w600)),
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
              icon: 'assets/images/logos_google-icon.png',
              textColor: black,
            ),
            SizedBox(height: 10.h),
            Button(
              text: anonymous,
              color: blue,
              icon: 'assets/images/logos_google-icon.png',
              textColor: white,
            ),
            SizedBox(
              height: 30.h,
            ),

            Footer(),
          ],
        ),
      ),
    );
  }
}
