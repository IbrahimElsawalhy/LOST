import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/register/register.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  get child => null;

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  // ignore: unused_element
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.of(context).push(SlideLeft(Page: home_page()));
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
              height: 250,
              width: 250,
              child: const Image(image: AssetImage('assets/images/logo.jpg')),
            ),
            Container(
              child: SpinKitThreeBounce(
                size: 30,
                itemBuilder: (context, index) {
                  final colors = [
                    Color.fromRGBO(210, 49, 153, 1),
                    Color.fromRGBO(114, 79, 199, 1)
                  ];
                  final color = colors[index % colors.length];

                  return DecoratedBox(
                    decoration: BoxDecoration(color: color , shape: BoxShape.circle),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
