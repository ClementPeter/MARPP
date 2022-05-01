import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ScreenNumber { First, Second, Third }

//Page View Child Widget
//Displaying PageView Children using Enums other than new screens

class ChildWidget extends StatelessWidget {
  final ScreenNumber number;
  final String description;

  const ChildWidget({Key key, this.number, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String file = "";
    if (number == ScreenNumber.First) {
      file = "image1";
    } else if (number == ScreenNumber.Second) {
      file = "image2";
    } else {
      file = "image3";
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "$description",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18.0,
                  letterSpacing: .5,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.0),
            Flexible(
              child: SizedBox(
                height: 290,
                width: 290,
                child: Image.asset("images/$file.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
