import 'package:flutter/material.dart';
import 'package:mad/mainmap.dart';

class PharmacyUi extends StatefulWidget {
  @override
  _PharmacyUiState createState() => _PharmacyUiState();
}

class _PharmacyUiState extends State<PharmacyUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            runApp(MyApp1());
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/pharmacy.png'),
                SizedBox(height: 30.0),
                Text(
                  'Nearest \n pharmacies',
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
