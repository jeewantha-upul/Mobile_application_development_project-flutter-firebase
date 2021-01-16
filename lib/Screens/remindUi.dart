import 'package:flutter/material.dart';
import 'package:mad/mainapp.dart';
class RemindUi extends StatefulWidget {
  @override
  _RemindUiState createState() => _RemindUiState();
}

class _RemindUiState extends State<RemindUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            runApp(MedicineReminder());
            print('bell');
          },
          child: Container(
            padding: EdgeInsets.only(left: 100.0, right: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('image/bell.png'),
                SizedBox(height: 30.0),
                Text(
                  'Remind Me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
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
