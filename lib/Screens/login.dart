import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_profile_ui/Screens/loginotp.dart';
import 'package:login_profile_ui/Screens/profile.dart';
import 'package:login_profile_ui/Screens/signup.dart';
import 'package:login_profile_ui/Screens/welcomescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Gradient one =
      LinearGradient(colors: [Color(0xffF48FB1), Color(0xffD81B60)]);

//################ Title Section Widget ########################//

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

  //################ Login id-password section Widget ########################//

  Widget _idpassword() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 6.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email id",
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
              hintText: "Enter Your Email-id",
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
              hintText: "Enter Your password",
              border: InputBorder.none,
              fillColor: Color(0xfff3f3f4),
              filled: true,
            ),
          ),
        ],
      ),
    );
  }

  //################ Login Button Widget ########################//

  Widget _login() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return ProfileScreen();
        }));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            //color: Colors.white,
            gradient: one,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xffD81B60).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ]),
        child: Text(
          "Login",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
      ),
    );
  }

//################ Divider Widget ########################//

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          Text('or'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  //################ Login With Facebook Button Widget ########################//

  Widget _facebookButton() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (BuildContext context) => LoginWithFb()));
      },
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.symmetric(horizontal: 0.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1959a9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('f',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff2872ba),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('Log in with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _loginwithotp() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => LoginWithOtp()));
      },
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.symmetric(horizontal: 0.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff43A047),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.white,
                  )),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff4CAF50),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('Log in with OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            )
          ],
        ),
      ),
    );
  }

  //################Bottom Row Section Widget ########################//

  Widget _bottomRow() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return SignUp();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50.0),
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Text(
              "Don't have an account?",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Register Here",
              style: TextStyle(
                  color: Color(0xffD81B60), fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  //################ back Button Widget ########################//

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
            children: <Widget>[
              _title(),
              SizedBox(
                height: 40.0,
              ),
              _idpassword(),
              SizedBox(
                height: 20.0,
              ),
              _login(),
              SizedBox(
                height: 30,
              ),
              _divider(),
              SizedBox(
                height: 60,
              ),
              _facebookButton(),
              SizedBox(height: 10.0),
              _loginwithotp(),
              SizedBox(height: 20.0),
              _bottomRow(),
            ],
          ),
        ),
        Positioned(top: 40, left: 0, child: _backButton()),
      ],
    )));
  }
}
