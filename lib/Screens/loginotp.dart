import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:international_phone_input/international_phone_input.dart';
import 'package:login_profile_ui/Screens/login.dart';

class LoginWithOtp extends StatefulWidget {
  @override
  _LoginWithOtpState createState() => _LoginWithOtpState();
}

class _LoginWithOtpState extends State<LoginWithOtp> {
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

  Widget _otpinstruction() {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(
        "OTP Will be send on this phone no",
        style: TextStyle(color: Colors.black, fontSize: 17.0),
      ),
    );
  }

  Widget _getotp() {
    return InkWell(
      onTap: () {
        setState(() {
          // one = LinearGradient(colors: [Color(0xffF443B1), Color(0xffD81B60)]);
        });
      },
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
          "Get OTP",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
      ),
    );
  }

  Widget _phoneno() {
    return InternationalPhoneInput(
      decoration: InputDecoration.collapsed(hintText: "your 10 digit phone no"),
      initialSelection: 'IN',
      enabledCountries: ['+91'],
      showCountryFlags: true,
      showCountryCodes: false,
    );
  }

  Widget _bottomRow() {
    return InkWell(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (BuildContext context) {
        //   return SignUp();
        // }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50.0),
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Text(
              "issue with verify with OTP?",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Click",
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
          return LoginScreen();
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
        body: Stack(
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
                height: 40.0,
              ),
              _otpinstruction(),
              SizedBox(
                height: 20.0,
              ),
              _phoneno(),
              SizedBox(
                height: 20.0,
              ),
              _getotp(),
              SizedBox(
                height: 20.0,
              ),
              _bottomRow()
            ],
          ),
        ),
        Positioned(top: 40, left: 0, child: _backButton()),
      ],
    ));
  }
}
