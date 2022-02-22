import 'package:flutter/material.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/homee/home.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCode extends StatelessWidget {
  
    final String requiredNumber = '123456';
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Pin Code.',
        home: Scaffold(
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
          body: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    child: Text(
                      "Please Enter PIN Code .. ",
                      style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    onChanged: (value) {
                      print(value);
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(0),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      inactiveColor: Color.fromRGBO(146, 39, 142, 1),
                      activeColor: Color.fromRGBO(158, 31, 100, 1),
                      selectedColor: Colors.black,
                    ),
                    onCompleted: (value) {
                      if (value == requiredNumber) {
                        print('valid pin');
                      } else {
                        print('invalid pin');
                      }
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: RaisedButton(
                      onPressed: () => {
                        Navigator.of(context).push(SlideLeft(Page: HomePage()))
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: new LinearGradient(colors: [
                              Color.fromRGBO(146, 39, 142, 1),
                              Color.fromRGBO(158, 31, 100, 1)
                            ])),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Verify",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.bold),
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
              ),
            ),
          ),
        ),
      );
    }
  }