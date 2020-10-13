// import 'package:flutter/material.dart';
// //import 'dart:async';
// //import 'package:path_provider/path_provider.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';

// class LoginWithFb extends StatefulWidget {
//   @override
//   _LoginWithFbState createState() => _LoginWithFbState();
// }

// class _LoginWithFbState extends State<LoginWithFb> {
//   void initiateFacebookLogin() async {
//     var facebookLogin = FacebookLogin();
//     // var facebookLoginResult =
//     //     await facebookLogin.logInWithReadPermission(['email']);
//     final facebookLoginResult = await facebookLogin.logIn(['email']);

//     switch (facebookLoginResult.status) {
//       case FacebookLoginStatus.error:
//         print("Error");
//         onLoginStatusChanged(false);
//         break;
//       case FacebookLoginStatus.cancelledByUser:
//         print("CancelledByUser");
//         onLoginStatusChanged(false);
//         break;
//       case FacebookLoginStatus.loggedIn:
//         print("LoggedIn");
//         onLoginStatusChanged(true);
//         break;
//     }
//   }

//   bool isLoggedIn = false;

//   void onLoginStatusChanged(bool isLoggedIn) {
//     setState(() {
//       this.isLoggedIn = isLoggedIn;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             MaterialButton(
//               onPressed: () => initiateFacebookLogin(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
