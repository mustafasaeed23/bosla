
import 'package:flutter/material.dart';

class MyTheme{
  static Color primaryLightColor = Color(0xff003E90);
  static Color whiteColor = Colors.white;
  static Color greenColor = Color(0xff39A552);
  static Color redColor = Color(0xffC91C22);
  static Color yellowColor = Color(0xffF2D352);








  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,

    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: MyTheme.primaryLightColor,
      ),
      subtitle1: TextStyle(
        fontSize: 15, fontWeight: FontWeight.bold, color: MyTheme.redColor,
      )
    )
  );
}