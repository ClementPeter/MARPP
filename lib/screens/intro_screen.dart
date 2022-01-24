import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:marpp/screens/login_in_screen.dart';
import 'package:marpp/screens/pageView_screen.dart';
import 'package:marpp/screens/register_screen.dart';

class IntroScreen extends StatefulWidget {
  //
  static String id = "Intro_screen";
  //
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              _pageController.animateToPage(2,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
              _pageController.jumpToPage(currentIndex = 2);
              print('Skip');
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, right: 20.0, bottom: 10.0),
              child: Container(
                height: 6.0,
                width: 70.0,
                child: Center(
                  child: Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0XFF8C25F4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
          ), //
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Color(0XFFFCFAFF),
      body: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
          ),
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                currentIndex = page;
              });
            },
            children: [
              ChildWidget(
                number: ScreenNumber.First,
                description:
                    "Empowering small and online businesses everywhere. Schedule posts and connect with your audience on social media!",
              ),
              ChildWidget(
                number: ScreenNumber.Second,
                description: "Send emails based on real-time website behavior",
              ),
              ChildWidget(
                number: ScreenNumber.Third,
                description:
                    "Leverage on deep-data and behavioural marketing automation. All campaign analytics in one place! ",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                //top: 5.0,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: DotsIndicator(
                    decorator: DotsDecorator(
                      activeColor: Color(0XFF8C25F4),
                    ),
                    dotsCount: 3,
                    position: currentIndex.toDouble(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 50, right: 50, bottom: 30.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Sign up');
                          print('gO TO REG SCREEN');
                          Navigator.pushNamed(context, RegistrationScreen.id);
                        },
                        child: Container(
                          height: 44.0,
                          child: Center(
                            child: Text(
                              "Register",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Color(0XFFFCFAFF),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0XFF8C25F4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                          print(' Login');
                        },
                        child: Container(
                          height: 44.0,
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0XFF8C25F4),
                              //width: 5,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
