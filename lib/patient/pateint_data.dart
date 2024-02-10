import 'dart:typed_data';

import 'package:bosla/my_theme.dart';
import 'package:bosla/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PatientData extends StatefulWidget {
  static const String routeName = 'Data';

  @override
  State<PatientData> createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
  Uint8List? image;

  void selectedImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.primaryLightColor,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: MyTheme.whiteColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50,),
              // profile picture
              Center(
                child: Stack(
                  children: [
                    image != null
                        ? CircleAvatar(
                            radius: 64,
                            backgroundImage: MemoryImage(image!),
                          )
                        : CircleAvatar(
                            radius: 64,
                            backgroundImage:
                                AssetImage('assets/images/images.png'),
                          ),
                    Positioned(
                      child: IconButton(
                        onPressed: selectedImage,
                        icon: const Icon(Icons.add_a_photo),
                      ),
                      bottom: -10,
                      left: 80,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              // Name

              Row(
                children: [
                  Text(
                    "Name :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hamza Magdy",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Age :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "55",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Phone :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "0155836541",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Relative Phone :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "01064832014",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Address :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Cairo",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Dr Name :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ahmed Ghazay",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Dr Phone :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "01238740054",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Disease :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Diabetes",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Blood type :",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "A+",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
