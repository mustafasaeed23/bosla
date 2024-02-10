
import 'package:bosla/Diseases/check_disease.dart';
import 'package:bosla/Home/home_screen.dart';
import 'package:bosla/Settings/Settings_tab.dart';
import 'package:bosla/my_theme.dart';
import 'package:bosla/patient/pateint_data.dart';
import 'package:bosla/patient/qr_code.dart';
import 'package:bosla/register/register.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static const String routeName ='drawer';

  // static const int home = 1 ;
  // static const int checkDisease = 2 ;
  // static const int settings = 3;
  // static const int logout = 4;
  //
  // Function onItemSideMenu ;
  //
  // HomeDrawer({required this.onItemSideMenu});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 64),
          width: double.infinity,
          color: MyTheme.primaryLightColor,


          child: Text("BOSLA",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: MyTheme.whiteColor),
            textAlign: TextAlign.center,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              // Home page
              Navigator.of(context).pushNamed(HomeScreen.routeName);


            },
            child: Row(
              children: [
                Icon(Icons.home, size: 35),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " Home ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              //patient data
              Navigator.of(context).pushNamed(PatientData.routeName);
            },
            child: Row(
              children: [
                Icon(Icons.person, size: 35),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " Profile ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              // profile patient
              Navigator.of(context).pushNamed(PatientProfile.routeName);


            },
            child: Row(
              children: [
                Icon(Icons.qr_code, size: 35),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " Patient QR Code ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              // check diseses
              Navigator.of(context).pushNamed(CheckDisease.routeName);
            },

            child: Row(
              children: [
                Icon(Icons.medication, size: 35),
                SizedBox(
                  width: 10,
                ),
                Text(
                  " Check Diseases ",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(SettingsTab.routeNamed);
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){
              // log out
              Navigator.of(context).pushNamed(RegisterScreen.routeName);
            },
            child: Row(
              children: [
                Icon(
                  Icons.exit_to_app,
                  size: 35,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
