
import 'package:bosla/Home/category_widget.dart';
import 'package:bosla/Home/home_drawer.dart';
import 'package:bosla/model/category.dart';
import 'package:bosla/my_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('BOSLA'),
         centerTitle: true,
       ),
      drawer: Drawer(
        child: HomeDrawer(),
      ),

      body: CategoryWidget(),



    );
  }
}
