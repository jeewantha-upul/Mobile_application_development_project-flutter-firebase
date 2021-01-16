import 'package:flutter/material.dart';
import 'package:mad/Screens/HealthUi.dart';
import 'package:mad/Screens/firstAidUi.dart';
import 'package:mad/Screens/hospitalUi.dart';
import 'package:mad/Screens/pharmacyUi.dart';
import 'package:mad/Screens/remindUi.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(width: 40.0),
              Text(
                'Hi Jeewantha',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.green,
                  letterSpacing: 1.5,
                ),
              ),
              SizedBox(width: 40.0),
              Flexible(
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('image/my.jpg'),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  FirstAidsUi(),
                  HealthUi(),
                ],
              ),
            ),
            RemindUi(),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  HospitalUi(),
                  PharmacyUi(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
