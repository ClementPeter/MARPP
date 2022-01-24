import 'package:flutter/material.dart';
import 'package:marpp/screens/intro_screen.dart';
import 'package:marpp/screens/register_screen.dart';
import 'package:marpp/screens/login_in_screen.dart';
import 'package:marpp/screens/splash_screen.dart';
// import 'screens/pageView_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
        title: 'MARPP',
        theme: ThemeData(
          //primarySwatch: Color(0xff8C25F4)
        ),
        //home: Splash(),
        initialRoute: Splash.id,
        routes: {
          Splash.id: (context) => Splash(),
          IntroScreen.id: (context) => IntroScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          LoginScreen.id: (context) => LoginScreen(),
        }
        //navigatorKey: StackedService.navigatorKey,
        );
  }
}
