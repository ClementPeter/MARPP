//import 'package:flutter/material.dart';

// class LoginScreen extends StatefulWidget {
//   static String id = "SignIn_screen";
//   @override
//   _State createState() => _State();
// }

// class _State extends State<LoginScreen> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'MARPP',
//           style: TextStyle(
//             //fontStyle: FontStyle.,
//             fontSize: 30.0,
//             fontFamily: "Benyo",
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//               alignment: Alignment.center,
//               padding: EdgeInsets.all(10),
//               // child: Text(
//               //   'TutorialKart',
//               //   style: TextStyle(
//               //       color: Colors.blue,
//               //       fontWeight: FontWeight.w500,
//               //       fontSize: 30),
//               // ),
//             ),
//             Container(
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   'Sign in',
//                   style: TextStyle(fontSize: 20),
//                 )),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             FlatButton(
//               onPressed: () {
//                 //forgot password screen
//               },
//               textColor: Colors.blue,
//               child: Text('Forgot Password'),
//             ),
//             Container(
//                 height: 50,
//                 padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: RaisedButton(
//                   textColor: Colors.white,
//                   color: Colors.blue,
//                   child: Text('Login'),
//                   onPressed: () {
//                     print(nameController.text);
//                     print(passwordController.text);
//                   },
//                 )),
//             Container(
//                 child: Row(
//               children: <Widget>[
//                 Text('Does not have account?'),
//                 FlatButton(
//                   textColor: Colors.blue,
//                   child: Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//               mainAxisAlignment: MainAxisAlignment.center,
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }

///////////////////
////
////
////
////
////
////
////
/////
////
///
///
///

import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dart:io';

//import 'package:box_ui/box_ui.dart';

class LoginScreen extends StatelessWidget {
  //const RegistrationScreen({ Key? key }) : super(key: key);
  //
  static String id = "Login_screen";
  //
  // final String title;
  // final String subtitle;
  // final String mainButtonTitle;
  // final Widget form;
  // final bool showTermsText;
  // final void Function() onMainButtonTapped;
  // final void Function() onCreateAccountTapped;
  // final void Function() onForgotPassword;
  // final void Function() onBackPressed;
  // final void Function() onSignInWithApple;
  // final void Function() onSignInWithGoogle;
  // final String validationMessage;
  // final bool busy;

  // const LoginScreen({
  //   Key key,
  //   this.title,
  //   this.subtitle,
  //   this.mainButtonTitle,
  //   this.form,
  //   this.onMainButtonTapped,
  //   this.onCreateAccountTapped,
  //   this.onForgotPassword,
  //   this.onBackPressed,
  //   this.onSignInWithApple,
  //   this.onSignInWithGoogle,
  //   this.validationMessage,
  //   this.showTermsText = false,
  //   this.busy = false,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            //if (onBackPressed == null) verticalSpaceLarge,
            //if (onBackPressed != null) verticalSpaceRegular,
            //if (onBackPressed != null)
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              //onPressed: onBackPressed,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Text(
              "Welcome",
              //style: TextStyle(fontSize: 34),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  //color: Color(0XFFFCFAFF),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            //verticalSpaceSmall,
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                //width: screenWidthPercentage(context, percentage: 0.7),
                width: 400.0,
                // child: BoxText.body(
                //   subtitle!,
                //   color: Colors.grey.shade400,
                // ),
                child: Text(
                  'Enter your name email and password',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        //color: Color(0XFFFCFAFF),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            //verticalSpaceRegular,
            SizedBox(height: 18.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0XFF848484)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Color(0xff8C25F4)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //borderSide:  BorderSide(
                ),
              ),
            ),

            //TextField(),
            SizedBox(height: 18.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0XFF848484)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(color: Color(0xff8C25F4)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  //borderSide:  BorderSide(
                ),
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     //border: OutlineInputBorder(),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(25.0),
            //       //borderSide:  BorderSide(                         ),
            //     ),
            //     //hintText: 'Enter a search term',
            //   ),
            // ),
            // //TextField(),
            //form,
            SizedBox(height: 18.0),
            //verticalSpaceRegular,
            // if (onForgotPassword != null)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                //onTap: onForgotPassword,
                // child: BoxText.body(
                //   'Forget Password?',
                // ),),
                child: Text(
                  'Forget Password?',
                ),
              ),
            ),
            SizedBox(height: 18.0),
            //verticalSpaceRegular,
            //if (validationMessage != null)
            // BoxText.body(
            //   validationMessage!,
            //   color: Colors.red,
            // ),
            Text(''
                //validationMessage,
                //color: Colors.red,
                ),
            //if (validationMessage != null) verticalSpaceRegular,
            GestureDetector(
              //onTap: onMainButtonTapped,
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  //color: kcPrimaryColor,
                  color: Color(0xff8C25F4),
                  // Color(0xff22A45D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:
                    //  busy
                    //     ? CircularProgressIndicator(
                    //         valueColor: AlwaysStoppedAnimation(Colors.white),
                    //       )
                    //     :
                    Text(
                  'SIGN IN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            //verticalSpaceRegular,
            SizedBox(height: 18.0),
            //if (onCreateAccountTapped != null)
            GestureDetector(
              //onTap: onCreateAccountTapped,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  //horizontalSpaceTiny,
                  SizedBox(width: 5.0),
                  Text(
                    'Create an account',
                    style: TextStyle(
                      //color: kcPrimaryColor,
                      color: Color(0xff22A45D),
                    ),
                  )
                ],
              ),
            ),
            //if (showTermsText)
            // BoxText.body(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // ),
            // Text(
            //   'By signing up you agree to our terms, conditions and privacy policy.',
            // ),
            //verticalSpaceRegular,
            SizedBox(height: 18.0),
            // Align(
            //   alignment: Alignment.center,
            //   child: Text(
            //     'Or',
            //   ),
            // ),
            //verticalSpaceRegular,
            SizedBox(height: 18.0),
            Row(
              children: [
                Divider(
                  height: 3.0,
                )
              ],
            ),
            //Divider(),
            //
            //
            //
            // FacebookAuthButton(
            //   // darkMode: true,
            //   //onPressed: onSignInWithGoogle ?? () {},
            //   text: 'CONTINUE WITH FACEBOOK',
            //   style: AuthButtonStyle(
            //     buttonColor: Color(0xff4285F4),
            //     iconSize: 24,
            //     iconBackground: Colors.white,
            //     buttonType: AuthButtonType.secondary,
            //     height: 50,
            //     textStyle: TextStyle(color: Colors.white),
            //   ),
            // ),

            SizedBox(height: 18.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  height: 3.0,
                  thickness: 5.0,
                ),
                Text(
                  'Or',
                ),
                Divider(
                  height: 3.0,
                  thickness: 5.0,
                ),
              ],
            ),
            SizedBox(height: 18.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Icon()
                //Icon(icon: Icons.ac_unit),
                Image.asset("images/facebook.png"),
                SizedBox(width: 20.0),
                SvgPicture.asset('images/apple.svg',
                    semanticsLabel: 'Apple Logo'),
                SizedBox(width: 20.0),
                SvgPicture.asset("images/google.svg",
                    semanticsLabel: 'Google Logo'),
              ],
            ),
            //if (Platform.isIOS)
            // AppleAuthButton(
            //   //onPressed: onSignInWithApple ?? () {},
            //   // darkMode: true,
            //   text: 'CONTINUE WITH APPLE',
            //   style: AuthButtonStyle(
            //     iconSize: 24,
            //     height: 50,
            //     textStyle: TextStyle(color: Colors.white),
            //     buttonType: AuthButtonType.secondary,
            //   ),
            // ),

            //verticalSpaceRegular,
            SizedBox(height: 18.0),
            // GoogleAuthButton(
            //   //onPressed: onSignInWithGoogle ?? () {},
            //   text: 'CONTINUE WITH GOOGLE',
            //   style: AuthButtonStyle(
            //     buttonColor: Color(0xff4285F4),
            //     iconSize: 24,
            //     iconBackground: Colors.white,
            //     buttonType: AuthButtonType.secondary,
            //     height: 50,
            //     textStyle: TextStyle(color: Colors.white),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
