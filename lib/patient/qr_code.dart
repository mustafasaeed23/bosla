import 'package:bosla/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:bosla/utils.dart' as Utils;


class PatientProfile extends StatefulWidget {
  static const String routeName = 'Patient';

  @override
  State<PatientProfile> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  final GlobalKey globalKey = GlobalKey();
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            RepaintBoundary(
              key: globalKey,
              child: Container(
                color: Colors.white,
                child: Center(
                    child: qrData.isEmpty
                        ? Text(
                            'Enter DR Name & Phone ',
                            style: TextStyle(
                              fontSize: 20,
                              color: MyTheme.primaryLightColor,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : QrImageView(
                            data: qrData,
                            version: QrVersions.auto,
                            size: 200,
                          )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Dr Name",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    qrData = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Dr Phone",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    qrData = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),

              ),
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.primaryLightColor),
                  ),
                  onPressed: () {

                  },
                  child: Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}
