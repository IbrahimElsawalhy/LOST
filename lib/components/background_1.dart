import 'package:flutter/material.dart';

class Background_1 extends StatelessWidget {
  final Widget child;

  const Background_1({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/background2.jpg",
              width: 250
            ),
          ), Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/background.jpg",
              width: 250
            ),
          ), Positioned(
            bottom: 10,
            right: 0,
            child: Image.asset(
              "assets/images/undraw_Social_share_re_qb4v (1).png",
              width: 220
            ),
          ), 
          child
        ],
      ),
    );
  }
}