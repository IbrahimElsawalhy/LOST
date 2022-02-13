import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/register/register.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      
      body: SingleChildScrollView(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            Container(
                alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: 
            Image.asset(
              'assets/images/logo.jpg',
              width: 220.0,
              ),
              ),

            Container(
            
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
              child: Text(
          
                "Your satisfaction - our main goal",
          
                style: GoogleFonts.nunitoSans(
                    height:0 ,
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 20),
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Username",
                    prefixIcon: Icon(Icons.people ,size: 25,color: Colors.grey[700]),
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                     labelStyle: TextStyle(
              color: Colors.black,
            ),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock,size: 25,color: Colors.grey[700]),
                     border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot your password?",
                style: GoogleFonts.ubuntu(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(100, 100, 100, 1)),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.8,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(colors: [
                        Color.fromRGBO(210, 49, 153, 1),
                        Color.fromRGBO(114, 79, 199, 1)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: GestureDetector(
                onTap: () =>
                    {Navigator.of(context).push(SlideLeft(Page: MyHomePage()))},
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: GoogleFonts.ubuntu(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(100, 100, 100, 1)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
    //Outline border type for TextFeild
    borderRadius: BorderRadius.all(Radius.circular(80)),
    borderSide: BorderSide(
          color:Colors.grey,
          width: 1,
        )
  );
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(80)),
    borderSide: BorderSide(
            color:Colors.grey,
          width: 1,
        )  );
}

    