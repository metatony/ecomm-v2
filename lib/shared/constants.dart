import '../utils/exports.dart';

const String google = 'Sign Up with Google';
const String anonymous = 'Sign In Anonymous';
const Color white = Colors.white;
const Color blue = Colors.blue;
const Color black = Colors.black;

const formBorder = OutlineInputBorder(
  //borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide(
    color: Color.fromARGB(255, 226, 226, 226),
  ),
);

const textInputDecoration = InputDecoration(
  enabledBorder: formBorder,
  contentPadding: EdgeInsets.all(15),
  prefixIconColor: Colors.black,
  //hintText: 'Enter your email address',
  hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
);
