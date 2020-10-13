import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_profile_ui/Screens/login.dart';
import 'package:login_profile_ui/Screens/welcomescreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Widget _title() {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: 'w',
            style: GoogleFonts.portLligatSans(
              textStyle: Theme.of(context).textTheme.bodyText2,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xffD81B60),
            ),
            children: [
              TextSpan(
                  text: 'el',
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              TextSpan(
                  text: 'come',
                  style: TextStyle(fontSize: 30, color: Color(0xffD81B60)))
            ]));
  }

  //################ enter signup details section Widget ########################//

  Widget _signUpdetails() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Username",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Email",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email-id",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Password",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }

  //################ Signup section Button Widget ########################//

  Widget _signup() {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            //color: Colors.white,
            gradient:
                LinearGradient(colors: [Color(0xffF48FB1), Color(0xffD81B60)]),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xffD81B60).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ]),
        child: Text(
          "Register Now",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
      ),
    );
  }

  //################ Back Button Widget ########################//

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return WelcomeScreen();
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

//################ Bottom Row Section Widget ########################//

  Widget _bottomRow() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return LoginScreen();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70.0),
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Text(
              "Already have an account?",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Login",
              style: TextStyle(
                  color: Color(0xffD81B60), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _title(),
              SizedBox(
                height: 40,
              ),
              _signUpdetails(),
              SizedBox(
                height: 40,
              ),
              _signup(),
              SizedBox(
                height: 20,
              ),
              _bottomRow()
            ],
          ),
        ),
        Positioned(top: 40, left: 0, child: _backButton()),
      ],
    )));
  }
}
