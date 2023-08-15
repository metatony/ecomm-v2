// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

TextEditingController nameSignIn = TextEditingController();
TextEditingController passwordSignIn = TextEditingController();
TextEditingController emailSignIn = TextEditingController();

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final authenticate = AuthService();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            //! header
            AuthHeader(
              title: 'Sign In',
              subTitle: 'Let\'s get you into your account',
            ),

            //! form
            SizedBox(
              width: double.infinity,
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //!email
                    'Email'.txt(fontWeight: FontWeight.w600),

                    TextFormField(
                      controller: emailSignIn,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: formBorder,
                        contentPadding: EdgeInsets.all(15),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter your email address',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'enter your email' : null,
                    ),
                    SizedBox(height: 20.h),

                    //!password
                    'Password'.txt(fontWeight: FontWeight.w600),

                    TextFormField(
                      controller: passwordSignIn,
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
                      validator: (value) =>
                          value!.isEmpty ? 'enter your password' : null,
                    ),
                    SizedBox(height: 25.h),

                    SignUpButton(
                      text: 'Sign In',
                      ontap: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                    ),
                  ],
                ),
              ),
            ),

            //! signup buttons

            Button(
              text: 'Sign In with Google',
              color: white,
              icon: FeatherIcons.aperture,
              textColor: black,
              iconColor: black,
              onTap: () async {
                // store the result in a dynamic variaable since it will be either a user or null
                // dynamic result = await authenticate.signInAnon();
                // result == null
                //     ? print('error signing in')
                //     : print('signed in : ${result.uid}');

                // Navigator.push(
                //   context,
                //   PageTransition(
                //       duration: Duration(milliseconds: 600),
                //       child: BottomBar(),
                //       type: PageTransitionType.rightToLeft),
                // );
              },
            ),
            SizedBox(height: 30.h),

            //navigate to sign up page
            Footer(
              text: 'Sign Up',
              questionText: 'Not a member yet?',
              ontap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 600),
                    child: SignUp(),
                    type: PageTransitionType.leftToRight,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
