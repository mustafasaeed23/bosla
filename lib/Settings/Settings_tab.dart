import 'package:bosla/my_theme.dart';
import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  static const String routeNamed = 'settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  // hintText: "English",
               suffixIcon: Icon(Icons.arrow_drop_down_outlined , color: MyTheme.primaryLightColor,size: 30, ),
                  label: Text('English', style: TextStyle(fontSize: 20, color: MyTheme.primaryLightColor),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  // counterText: "Arabic",
                  enabled: true,
                  hoverColor: MyTheme.primaryLightColor,


                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
