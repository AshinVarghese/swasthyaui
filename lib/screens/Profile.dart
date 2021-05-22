import 'package:Swasthya/model/model.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Model model;
  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Successful')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.firstName, style: TextStyle(fontSize: 22)),
            Text(model.lastName, style: TextStyle(fontSize: 22)),
            Text(model.dob, style: TextStyle(fontSize: 22)),
            Text(model.gender, style: TextStyle(fontSize: 22)),
            Text(model.pincode.toString(), style: TextStyle(fontSize: 22)),
            Text(model.emergencyContactNumber.toString(),
                style: TextStyle(fontSize: 22)),
            Text(model.bloodGroup, style: TextStyle(fontSize: 22)),
            Text(model.allergies, style: TextStyle(fontSize: 22)),
            Text(model.comorbidities, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}
