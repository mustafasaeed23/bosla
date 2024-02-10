import 'dart:core';

import 'package:bosla/Diseases/Disease.dart';
import 'package:bosla/Diseases/check_disease.dart';
import 'package:bosla/model/category.dart';
import 'package:bosla/my_theme.dart';
import 'package:bosla/Dcotors/doctor_profile.dart';
import 'package:bosla/patient/pateint_data.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  static const String routeName = '';


  late Category category;

// int drProfile = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(12),
      child: Container(
        width: MediaQuery.of(context).size.height * 0.5,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                " Pick Topic \n for more Tips :",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, DoctorProfile.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Doctor Profile",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/doctor2.jpg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, PatientData.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Patient Profile",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/patient.jpg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, CheckDisease.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Diabetes",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                         Spacer(),
                        Image.asset(
                          'assets/images/Diabetes.jpeg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, DoctorProfile.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: MyTheme.primaryLightColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Blood pressure ",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/blood.jpg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, DoctorProfile.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Al-Zaheimer ",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/txt1.jpg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, DoctorProfile.routeName);
                },
                child: Container(
                  margin: EdgeInsets.all(3),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "General",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                ?.copyWith(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/txt4.jpg',
                          //   width: MediaQuery.of(context).size.width*0.3,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    ));

    //         Expanded(
    //             flex: 1,
    //             child: ListView.builder(
    //               scrollDirection: Axis.vertical,
    //               reverse: false,
    //               padding: EdgeInsets.all(10),
    //               itemBuilder: (BuildContext context, int index) {
    //                 return
    //                    CategoryItemWidget(
    //                       category: categoryList[index], index: index);
    //
    //               },
    //               itemCount: 6,
    //
    //             )),
    //       ],
    //     ),
    //   ),
    // );
  }
}
