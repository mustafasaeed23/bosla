
import 'dart:ui';

import 'package:bosla/Diseases/check_disease.dart';
import 'package:bosla/my_theme.dart';
import 'package:bosla/Dcotors/doctor_profile.dart';
import 'package:bosla/patient/qr_code.dart';
import 'package:flutter/material.dart';

class Category{
  String id ;
  String title ;
  String imagePath ;
  Color backgroundColor ;

  Category({
    required this.id,
    required this.backgroundColor,
    required this.title,
    required this.imagePath,


});

  static List<Category> getCategory(){
   return [

     Category(id: 'Doctor Profile', backgroundColor: Colors.black,
         title: 'Doctor Profile',
         imagePath: 'assets/images/doctor2.jpg' ,
     ),


     Category(id: 'Patient Profile', backgroundColor: Colors.indigoAccent,
         title: 'Patient Profile', imagePath: 'assets/images/patient.jpg',
     ),


     Category(id: 'Diabetes', backgroundColor: MyTheme.redColor,
         title: 'Diabetes', imagePath: 'assets/images/Diabetes.jpeg',
     ),

     Category(id: 'Blood Pressure', backgroundColor: MyTheme.primaryLightColor,
         title: 'Blood Pressure', imagePath: 'assets/images/blood.jpg',

     ),

     Category(id: 'AlZahimer', backgroundColor: MyTheme.greenColor,
         title: 'AlZahimer', imagePath: 'assets/images/txt4.jpg',

     ),

     Category(id: 'General', backgroundColor: MyTheme.yellowColor,
         title: 'General', imagePath: 'assets/images/txt1.jpg',

     ),

   ];
  }


}