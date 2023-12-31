import 'package:ecommerce_app/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  //create a function to store the required response from the auth request
  UserModel? userFromFirebase(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  //auth change user stream. stream for tracking auth change
  Stream<UserModel?> get user {
    return auth
        .authStateChanges() //this listens for auth change
        .map(userFromFirebase); //this maps the change for each user object
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await auth
          .signInAnonymously(); //this allows you to sign in anonymously
      User user = result.user!; //this user object is the current user
      return userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // register with email and password

  Future registerWithEmailAndPassword(String email, String password) async {
    // creating a user with email and password requires email and password arguements
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
          email: email, password: password); // get user credentials
      User? user = result.user; // get the user from the result response
      return userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
