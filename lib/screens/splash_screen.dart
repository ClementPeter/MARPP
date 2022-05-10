import 'package:flutter/material.dart';
import 'package:marpp/screens/intro_screen.dart';

//App Splash Screeen displaying App Name and Logo
class Splash extends StatefulWidget {
  static String id = "splash_screen";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetointro();
  }

  //Navigate to Intro Screen PageView
  _navigatetointro() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => IntroScreen(),
      ),
    );
  }

  //Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFFCFAFF),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/shield.png'),
              Text(
                'MARPP',
                style: TextStyle(
                  fontSize: 70.0,
                  fontFamily: "Benyo",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
