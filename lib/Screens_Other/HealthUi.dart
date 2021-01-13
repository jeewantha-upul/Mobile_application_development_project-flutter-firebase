import 'package:flutter/material.dart';

class HealthUi extends StatefulWidget {
  @override
  _HealthUiState createState() => _HealthUiState();
}

class _HealthUiState extends State<HealthUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            /*--------------------------
            -------------------------
            add your code here
            ---------------------------
            -----------------------------
             */
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/cardiogram.png'),
                SizedBox(height: 30.0),
                Text(
                  'Health Tips',
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
