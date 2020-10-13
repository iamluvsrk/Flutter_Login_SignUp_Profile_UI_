import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_profile_ui/Screens/login.dart';
import 'package:login_profile_ui/Screens/signup.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              color: Colors.white,
            ),
            children: [
              TextSpan(
                  text: 'el',
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              TextSpan(
                  text: 'come',
                  style: TextStyle(fontSize: 30, color: Colors.white))
            ]));
  }
//################ Login Button Widget ########################//

  Widget _login() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return LoginScreen();
        }));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xffD81B60).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ]),
        child: Text(
          "Login",
          style: TextStyle(fontSize: 22.0, color: Color(0xffEC407A)),
        ),
      ),
    );
  }

//################ SignUp Button Widget ########################//

  Widget _signup() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return SignUp();
        }));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 12.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.white, width: 2.0)),
        child: Text(
          "Register Now",
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
      ),
    );
  }

//################ ThumbPrint Section Widget ########################//

  Widget _thumbcontainer() {
    return InkWell(
        onLongPress: () {
          showDialog(
              context: context,
              child: new AlertDialog(
                title: new Text(
                  "Warning!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: new Text("This Option is not currently available"),
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120.0),
                    child: RaisedButton(
                        color: Color(0xffD81B60),
                        child: Text(
                          "Okay",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  )
                ],
              ));
        },
        child: Container(
          margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
          child: Column(
            children: [
              Text(
                "Quick Login with Touch Id",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {},
                child: Icon(Icons.fingerprint, color: Colors.white, size: 90.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Use Touch ID",
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 15.0),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Single child scrollview section
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffF48FB1), Color(0xffD81B60)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _title(), //title section
              SizedBox(
                height: 70.0,
              ),
              _login(), //Login Button section
              SizedBox(
                height: 10.0,
              ),
              _signup(), //Signup Button section
              SizedBox(
                height: 20.0,
              ),
              _thumbcontainer() //Thumbprint  secton
            ],
          ),
        ),
      ),
    );
  }
}
