import 'package:flutter/material.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/login/pin_code.dart';

class ResetPass extends StatelessWidget {
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/logo_nav.png'),
          width: 100,
          height: 100,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(146, 39, 142, 1),
                Color.fromRGBO(158, 31, 100, 1)
              ])),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 20.0),
              child: Text(
                "Please Enter your email .. ",
                style: GoogleFonts.nunitoSans(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
              ),
            ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: Material(
              elevation: 2,
              shadowColor: Color.fromRGBO(210, 49, 153, 1),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    hoverColor: Colors.white,
                    filled: true,
                    labelStyle: TextStyle(
                      color: Colors.grey[700],
                    ),
                    labelText: "Email",
                    prefixIcon:
                        Icon(Icons.email, size: 25, color: Colors.grey[700]),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1))),
              ),
            ),
          ),               
           Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: RaisedButton(
                    onPressed: () => {
                            Navigator.of(context)
                                .push(SlideLeft(Page: PinCode()))
                          },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.55,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromRGBO(146, 39, 142, 1),
                            Color.fromRGBO(158, 31, 100, 1)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "Confirm",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: const Image(
              image: AssetImage('assets/images/vector.png'),
              height: 270,
              width: 270,
            ),
          ),
        ],
      )),
    );
  }
}
