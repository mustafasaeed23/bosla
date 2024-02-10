
import 'package:bosla/my_theme.dart';
import 'package:flutter/material.dart';

class Disease extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12,),
            Text("Please Doctors must fill these medical information as it is sensitive ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12,),
            Text("Diabetes : " ,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25 , color: Colors.black),
            ),
            Row(
              children: [
                Text('Pregnancies : ' ,
                style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),

            Row(
              children: [
                Text(' Glucose : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Text('BloodPressure : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),

            Row(
              children: [
                Text('SkinThickness : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),

            Row(
              children: [
                Text('Insulin : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),

            Row(
              children: [
                Text('BMI : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),
                SizedBox(height: 8,),


              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Text('DiabetesPedigreeFunction : ' ,
                  style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),


                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 8,),




          ],
        ),
      ),
    );
  }
}
