import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  // ignore: unused_element
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => home_page()
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:500,
              width: 500,
              
              child:  const Image(image: AssetImage('assets/images/logo.jpg')),
            ),
            
          ],
        ),
      ),
    );
  }
}
