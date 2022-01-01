import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget {
  //const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetointro();
  }

  _navigatetointro() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => IntroScreen(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFFCFAFF),
          ),
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MARPP',
                          style: TextStyle(
                            //fontStyle: FontStyle.,
                            fontSize: 80.0,
                            fontFamily: "Benyo",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset('images/marpp.png'),
            ],
          ),
        ),
      ),
    );
  }
}
