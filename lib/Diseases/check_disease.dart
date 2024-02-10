
import 'package:bosla/Diseases/Disease.dart';
import 'package:bosla/Home/category_widget.dart';
import 'package:bosla/my_theme.dart';
import 'package:flutter/material.dart';

import '../Home/home_drawer.dart';

class CheckDisease extends StatelessWidget {
  static const String routeName = 'check' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Diseases'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),
      body: Disease(),
    );
  }
}
