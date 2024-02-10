import 'package:bosla/firebase_errors.dart';
import 'package:bosla/login/login_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

class LoginViewModel extends ChangeNotifier{

  late LoginNavigator navigator ;

  void loginFireAuth(String email, String password) async{
    try {
      //show loading
      navigator.showLoading();
      final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
      );
      // hideloading
      navigator.hideLoading();
      // show message
      navigator.showMessage("Login Successfully");

      print("id : ${result.user?.uid}");

    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseUtils.UserNotFound) {
        // hide loading
        navigator.hideLoading();
        // show message
        navigator.showMessage('No user found for that email.');
        print('No user found for that email.');
      } else if (e.code == FirebaseUtils.wrongPassword) {
        //hide loading
        navigator.hideLoading();
        //show message
        navigator.showMessage('Wrong password provided for that user.');
        print('Wrong password provided for that user.');
      }
    }
  }
}