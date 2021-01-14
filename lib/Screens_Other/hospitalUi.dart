import 'package:flutter/material.dart';
import 'package:mad/mainmap2.dart';

class HospitalUi extends StatefulWidget {
  @override
  _HospitalUiState createState() => _HospitalUiState();
}

class _HospitalUiState extends State<HospitalUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            runApp(MyApp2());
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/hospital.png'),
                SizedBox(height: 30.0),
                Text(
                  'Nearest \n Hospitals',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  // changes position of shadow
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
