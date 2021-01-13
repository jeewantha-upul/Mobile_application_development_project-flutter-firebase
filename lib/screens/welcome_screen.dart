import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:mad/components/rounded_button.dart';
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  /* ---------------------------

                        Animation to color of screen

   ----------------------------- */
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.green[50], end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      // to re render the updated UI
      setState(() {
        // no need of code here. just change the state
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    super.dispose();
  }

/*  ---------------------------
    -----------------------------
 */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('image/logo.png'),
                    height: 100.0,
                  ),
                ),

                /* -------------------------  animated text --------------------------------------------------------------------------*/
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 200),
                  totalRepeatCount: 4,
                  text: [
                    'Medi Care',
                  ],
                  textStyle: TextStyle(
                    color: Colors.grey[600],
                    letterSpacing: 2.0,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              colour: Colors.lightBlueAccent,
              title: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
                colour: Colors.blueAccent,
                title: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }),
          ],
        ),
      ),
    );
  }
}


