import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:login_profile_ui/Screens/profile.dart';
import 'package:login_profile_ui/Screens/splashscreen.dart';
//import 'package:login_profile_ui/Screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Login Demo",
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
              bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
            )),
        home: Splashscreen());
  }
}
