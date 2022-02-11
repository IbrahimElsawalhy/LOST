import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/login/login.dart';
import 'package:login_ui/components/background.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                "REGISTER",
                style:  GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(114, 79, 199, 1),
                  fontSize: 36
                ),
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Name",
                ),

              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Mobile Number"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Username"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.02),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password"
                ),
                obscureText: true,
              ),
            ),

            SizedBox(height: size.height * 0.03),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(80.0),
                    gradient: new LinearGradient(
                      colors: [
                        Color.fromRGBO(210, 49, 153,1),
                        Color.fromRGBO(114, 79, 199, 1)
                      ]
                    )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "SIGN UP",
                    textAlign: TextAlign.center,
                    style:   GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      // color: Colors.white 
                    ),
                  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.of(context).push(SlideRight(Page: LoginScreen()))
                },
                child: Text(
                  "Already Have an Account? Sign in",
                  style:GoogleFonts.ubuntu(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(114, 79, 199, 1)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}