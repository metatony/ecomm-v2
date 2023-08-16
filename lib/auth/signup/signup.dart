// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/utils/exports.dart';

TextEditingController nameSignUp = TextEditingController();
TextEditingController passwordSignUp = TextEditingController();
TextEditingController emailSignUp = TextEditingController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //create an instance of the authentication class
  final authenticate = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

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
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // name textfield
                    'Full name'.txt(fontWeight: FontWeight.w600),
                    TextFormField(
                      controller: nameSignUp,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: formBorder,
                        contentPadding: EdgeInsets.all(15),
                        prefixIconColor: Colors.black,
                        hintText: 'Enter your full name',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                      validator: (value) =>
                          value!.isEmpty ? 'enter your name' : null,
                    ),
                    SizedBox(height: 20.h),

                    //!email
                    'Email'.txt(fontWeight: FontWeight.w600),
                    TextFormField(
                      controller: emailSignUp,
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
                      controller: passwordSignUp,
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
                          value!.length < 6 ? 'enter a password 6+ long' : null,
                    ),
                    SizedBox(height: 25.h),
                    SignUpButton(
                      text: 'Sign Up',
                      ontap: () async {
                        if (_formKey.currentState!.validate()) {
                          dynamic result =
                              await authenticate.registerWithEmailAndPassword(
                                  emailSignUp.text, passwordSignUp.text);
                          if (result == null) {
                            print('enter a valid email or password');
                            setState(() {
                              error = 'enter a valid email or password';
                            });
                          } else {
                            // Navigate to the SignUp screen after signing out
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          }
                        }
                      },
                    ),
                    SizedBox(height: 10.h),

                    error.txt(color: Colors.red).center(),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),

            //! signup buttons

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
              onTap: () async {
                // store the result in a dynamic variaable since it will be either a user or null
                dynamic result = await authenticate.signInAnon();
                result == null
                    ? print('error signing in')
                    : print('signed in : ${result.uid}');

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

            // navigate to sign in page
            Footer(
              text: 'Log In',
              ontap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 600),
                    child: SignIn(),
                    type: PageTransitionType.rightToLeft,
                  ),
                );
              },
              questionText: 'Already a member?',
            ),
          ],
        ),
      ),
    );
  }
}
