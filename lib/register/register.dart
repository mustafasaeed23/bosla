import 'package:bosla/Home/home_screen.dart';
import 'package:bosla/firebase_errors.dart';
import 'package:bosla/register/register_navigator.dart';
import 'package:bosla/register/register_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bosla/utils.dart' as Utils;

import '../my_theme.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    implements RegisterNavigator {
  String firstName = '';
  String Age = '';
  String gender = '';
  String phone = '';
  String relativePhone = '';
  String Disease = '';
  String Phone = '';
  String email = '';
  String password = '';
  String drPhone = '';

  var formKey = GlobalKey<FormState>();

  RegisterViewModel viewModel = RegisterViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.navigator = this;
  }

  List<String> items = ['Select Gender', 'Male', 'Female'];
  String? selectedItem = 'Select Gender';

  List<String> Disesas = ['', 'Diabetes', 'Blood pressure', 'Alzheimer'];
  String? selectedItemDisease = '';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
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
                'Create Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'First Name ',
                        ),
                        onChanged: (text) {
                          firstName = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter First Name";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Age '),
                        onChanged: (text) {
                          Age = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Age";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Phone '),
                        onChanged: (text) {
                          phone = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Your Phone";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Relative Phone '),
                        onChanged: (text) {
                          Age = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Relative Phone";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Gender',
                            suffixIcon: DropdownButton<String>(
                              value: selectedItem,
                              items: items
                                  .map((item) => DropdownMenuItem(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: TextStyle(fontSize: 20),
                                      )))
                                  .toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItem = item),
                            )),
                        onChanged: (text) {
                          gender = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Gender";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: ' Disease ',
                            suffixIcon: DropdownButton<String>(
                              value: selectedItemDisease,
                              items: Disesas.map((item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(fontSize: 20),
                                  ))).toList(),
                              onChanged: (item) =>
                                  setState(() => selectedItemDisease = item),
                            )),
                        onChanged: (text) {
                          Disease = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter your Disease";
                          }
                          return null;
                        },
                      ),
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
                        decoration: InputDecoration(labelText: 'Password '),
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
                      TextFormField(
                        decoration: InputDecoration(labelText: ' Dr Phone '),
                        onChanged: (text) {
                          drPhone = text;
                        },
                        validator: (text) {
                          if (text == null || text.trim().isEmpty) {
                            return " Please Enter Your Password";
                          }
                          if (text.length < 6) {
                            return "Password must be at least 11 numbers";
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
                          child: Text("Create Account "))
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

  void validateForm() async {
    if (formKey.currentState?.validate() == true) {
      //register
      viewModel.registerFirebaseAuth(email, password);
    }
  }

  @override
  void hideLoading() {
    Utils.hideLoading(context);
  }

  @override
  void showLoading() {
    Utils.showLoading(context);
  }

  @override
  void showMessage(String message) {
    Utils.showMessage(context, message, 'OK', (context) {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    });
  }
}
