import 'package:flutter/material.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/components/background_1.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      
      appBar: AppBar(
        
        centerTitle: true,
        // title: Text(
        //   'LOST',
        //   style: GoogleFonts.nunitoSans(
        //     fontSize: 30,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 3,
        //     color: Color.fromRGBO(0, 0, 0, 1),
        //   ),
        // ),
        title:  Container(
              height:100,
              width: 100,
              
              child:  const Image(image: AssetImage('assets/images/logo_nav.png')),
            ),
       flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                gradient: LinearGradient(
                    colors: [Color.fromRGBO(210, 49, 153, 1),
                            Color.fromRGBO(114, 79, 199, 1)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
          ),
        
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_rounded,
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_outlined,
                color: Color.fromRGBO(255, 255, 255, 1),
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        
      ),
      body: Background_1(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
              child: Text(
                "WELCOME SIR!",
                style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.bold,
                    color:Color.fromRGBO(114, 79, 199, 1),
                    fontSize: 32
                    ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Text(
                "We will help you find your device, sign in to start the search journey ",
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
             SizedBox(height: size.height * 0.02),
            ElevatedButtonTheme(
              data: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(minimumSize: Size(120, 60))),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(SlideLeft(Page: LoginScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.4,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromRGBO(210, 49, 153, 1),
                            Color.fromRGBO(114, 79, 199, 1)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "SEARCH",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.4,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromRGBO(210, 49, 153, 1),
                            Color.fromRGBO(114, 79, 199, 1)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "REVIEW",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                    ),
                  ),
                 SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
             SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
    );
  }
}


