// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/shared/loading.dart';
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
  final authenticate = AuthService();
  String error = '';
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    //final authenticate = AuthService();
    return loading
        ? Loading()
        : Scaffold(
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
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Email address'),
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
                            decoration: textInputDecoration.copyWith(
                                hintText: 'Password'),
                            validator: (value) => value!.length < 6
                                ? 'enter a password 6+ long'
                                : null,
                          ),
                          SizedBox(height: 25.h),

                          SignUpButton(
                            text: 'Sign In',
                            ontap: () async {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  loading = true;
                                });
                                dynamic result = await authenticate
                                    .signInWithEmailAndPassword(
                                        emailSignIn.text, passwordSignIn.text);
                                if (result == null) {
                                  print('error signing in');
                                  setState(() {
                                    error = 'error signing in';
                                    loading = false;
                                  });
                                } else {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomBar()),
                                  );
                                }
                              }
                            },
                          ),
                          error.txt(color: Colors.red).center(),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),

                  //! signup buttons

                  //navigate to sign up page
                  Footer(
                    text: ' Sign Up',
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
