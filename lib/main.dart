
import 'dart:io';

import 'package:bosla/Diseases/check_disease.dart';
import 'package:bosla/Home/home_screen.dart';
import 'package:bosla/Settings/Settings_tab.dart';
import 'package:bosla/login/login_screen.dart';
import 'package:bosla/my_theme.dart';
import 'package:bosla/Dcotors/doctor_profile.dart';
import 'package:bosla/patient/pateint_data.dart';
import 'package:bosla/patient/qr_code.dart';
import 'package:bosla/register/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ?
  await Firebase.initializeApp()
:
  await Firebase.initializeApp(
    options: const  FirebaseOptions(
        apiKey: "AIzaSyDtF6IG2HxdZBCPKxtCHq9zG2dtY9r4q0M",
        appId: "1:333330848951:android:d7d06ea6f531e3aaf0c132",
        messagingSenderId: "333330848951",
        projectId: "boslaapp-39651")
  );


  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
    HomeScreen.routeName : (context) => HomeScreen(),
      RegisterScreen.routeName : (context) => RegisterScreen(),
      LoginScreen.routeName : (context)=>LoginScreen(),
      CheckDisease.routeName : (context) => CheckDisease(),
      PatientProfile.routeName:(context)=>PatientProfile(),
      SettingsTab.routeNamed: (context)=>SettingsTab(),
      PatientData.routeName: (context)=>PatientData(),
      DoctorProfile.routeName:(context)=>DoctorProfile(),

    },
    initialRoute: HomeScreen.routeName,
    theme: MyTheme.lightTheme ,
  );
  }
}



