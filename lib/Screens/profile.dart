import 'package:flutter/material.dart';
import 'package:login_profile_ui/Screens/login.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:login_profile_ui/pre/my_flutter_app_icons.dart' as customicon;

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
//############# circle Image Widget  #################//

  Widget _circlePicture() {
    return CircleAvatar(
      backgroundColor: Color(0xffF48FB1),
      // radius: 20.0,
      //minRadius: 1.0,
      maxRadius: 70.0,
      child: Padding(
        padding: EdgeInsets.all(3.0),
        child: Image.asset('assets/image.png'),
      ),
    );
  }

//############# Name With Profile Widget  #################//

  Widget _nameWithProfile() {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "Kratika Aggrawal",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _followDetails(String text1, String text2) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: [
          Text(
            text1,
            style: TextStyle(
                color: Color(0xffD81B60),
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text2,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

//############# Followers & Following Widget  #################//

  Widget _followersRow() {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _followDetails("1299", "Followers"),
          SizedBox(
            width: 7.0,
          ),
          Text(
            "|",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0),
          ),
          SizedBox(
            width: 7.0,
          ),
          _followDetails("1090", "Following"),
        ],
      ),
    );
  }

//############# Back Button Widget  #################//

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
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black,
                size: 30.0,
              ),
            ),
            Text('Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _myprofile() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text('My Profile',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)));
  }

  Widget _editbutton() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text('Edit',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)));
  }

  //############# Follow Button Widget  #################//

  Widget _followButton() {
    return Container(
      child: MaterialButton(
          splashColor: Color(0xffF48FB1),
          height: 50.0,
          minWidth: 80.0,
          onPressed: () {},
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                  color: Color(0xffD81B60),
                  width: 2.0,
                  style: BorderStyle.solid)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Follow me",
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xffF48FB1),
              ),
            ),
          )),
    );
  }

  Widget _socialIcons() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            splashColor: Color(0XFF3b5998),
            icon: Icon(
              customicon.MyFlutterApp.facebook,
              color: Color(0XFF3b5998),
              size: 40.0,
            ),
            onPressed: () {
              FlutterShareMe().shareToFacebook(msg: "Hi Everyone");
            },
          ),
          SizedBox(
            width: 35.0,
          ),
          IconButton(
            splashColor: Color(0XFF25D366),
            icon: Icon(
              customicon.MyFlutterApp.whatsapp,
              color: Color(0XFF25D366),
              size: 40.0,
            ),
            onPressed: () {
              FlutterShareMe().shareToWhatsApp(msg: "Hi Everyone");
            },
          ),
          SizedBox(
            width: 35.0,
          ),
          IconButton(
            splashColor: Color(0XFF00acee),
            icon: Icon(
              customicon.MyFlutterApp.twitter,
              color: Color(0XFF00acee),
              size: 40.0,
            ),
            onPressed: () {
              FlutterShareMe().shareToTwitter(
                  //url: 'https://www.facebook.com/lavkush.kush.1/s',
                  msg: "Babilok");
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFFEEEEEE),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _circlePicture(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _nameWithProfile(),
                  SizedBox(
                    height: 40.0,
                  ),
                  _followersRow(),
                  SizedBox(
                    height: 90.0,
                  ),
                  _followButton(),
                  SizedBox(
                    height: 130.0,
                  ),
                  _socialIcons()
                ],
              ),
            ),
            Positioned(
              child: _backButton(),
              top: 35.0,
              left: 4.0,
            ),
            Positioned(
              child: _myprofile(),
              top: 50.0,
              left: 150.0,
            ),
            Positioned(
              child: _editbutton(),
              top: 50.0,
              //left: 150.0,
              right: 10.0,
            )
          ],
        ));
  }
}
