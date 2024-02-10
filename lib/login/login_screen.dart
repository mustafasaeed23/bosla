import 'package:bosla/Home/home_screen.dart';
import 'package:bosla/login/login_navigator.dart';
import 'package:bosla/login/login_view_model.dart';
import 'package:bosla/my_theme.dart';
import 'package:bosla/register/register.dart';
import 'package:flutter/material.dart';
import 'package:bosla/utils.dart' as Utils;
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> implements LoginNavigator {
  String email = '';
  String password = '';

  var formKey = GlobalKey<FormState>();

  LoginViewModel viewModel = LoginViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.navigator = this;
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>viewModel,
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              title: Text(
                'Login',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email '),
                        onChanged: (text) {
                          email = text;
                        },
                        validator: (text) {
                          final bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(text!);

                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Your Email";
                          }
                          if (!emailValid) {
                            return "Please Enter valid Email";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password ',
                        // border:
                        ),
                        onChanged: (text) {
                          password = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Your Password";
                          }
                          if (text.length < 6) {
                            return "Password must be at least 6 chars";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyTheme.primaryLightColor),
                        ),
                          onPressed: () {
                            validateForm();
                          },
                          child: Text("Login ",),

                      ),
                      SizedBox(
                        height: 18,
                      ),
                      TextButton(onPressed: (){
                       Navigator.of(context).pushNamed(RegisterScreen.routeName);
                      },
                          child: Text("Don't have an account",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          ),

                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void validateForm() {
    if (formKey.currentState?.validate() == true) {
      // login
      viewModel.loginFireAuth(email, password);
    }
  }

  @override
  void hideLoading() {
    Utils.hideLoading(context);
  }

  @override
  void showLoading() {
    Utils.hideLoading(context);
  }

  @override
  void showMessage(String message) {
    Utils.showMessage(context, message, "OK", (context) {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    });
  }
}
