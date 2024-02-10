
import 'package:bosla/register/register_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../firebase_errors.dart';

class RegisterViewModel extends ChangeNotifier{
 late RegisterNavigator navigator ;

  void registerFirebaseAuth(String email, String password) async{
    // show loading
    navigator.showLoading();
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('firebase auth id : ${result.user?.uid }');
      // hide loading
      navigator.hideLoading();
      // show message
      navigator.showMessage("Register Successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseUtils.weekPassword) {
        navigator.hideLoading();
        navigator.showMessage('The password provided is too weak.');

        print('The password provided is too weak.');
      } else if (e.code == FirebaseUtils.EmailAlreadyInUse) {
        // hide loading
        navigator.hideLoading();
        // show message
        navigator.showMessage('The account already exists for that email.');

        print('The account already exists for that email.');
      }
    } catch (e) {
      // hide loading
      navigator.hideLoading();
      // show message
      navigator.showMessage("SomeThing went wrong");
      print(e);
    }
  }
}