import 'package:flutter/material.dart';
class FirstAidsUi extends StatefulWidget {
  @override
  _FirstAidsUiState createState() => _FirstAidsUiState();
}

class _FirstAidsUiState extends State<FirstAidsUi> {
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
                Image.asset('image/medkit.png'),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'First Aids',
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
