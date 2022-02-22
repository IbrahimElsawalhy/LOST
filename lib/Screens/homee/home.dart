import 'package:flutter/material.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/login/login_user.dart';

class HomePage extends StatelessWidget {
  var text;
  get children => null;

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
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 5.0),
                  child: GestureDetector(
                      onTap: () => {
                            Navigator.of(context)
                                .push(SlideLeft(Page: LoginScreenUser()))
                          },
                      child: Image(
                        image: AssetImage(
                            'assets/images/Stolen_without_space.png'),
                        width: 110,
                        height: 100,
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context)
                          .push(SlideLeft(Page: LoginScreenUser()))
                    },
                    child: Text(
                      'Make report',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                        color: Color.fromRGBO(146, 39, 142, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ]),
              Column(children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 5.0),
                  child: GestureDetector(
                      onTap: () => {
                            Navigator.of(context)
                                .push(SlideLeft(Page: LoginScreen()))
                          },
                      child: Image(
                        image: AssetImage(
                            'assets/images/StoreOwner_without_space.png'),
                        width: 110,
                        height: 100,
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.of(context).push(SlideLeft(Page: LoginScreen()))
                    },
                    child: Text(
                      'Store owner',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunitoSans(
                        color: Color.fromRGBO(146, 39, 142, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: const Image(
              image: AssetImage('assets/images/vector.png'),
              height: 270,
              width: 270,
            ),
          ),
        ]),
      ),
    );
  }
}
