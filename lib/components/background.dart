import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
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
            top: 20,
            right: 0,
            child: Image.asset(
              "assets/images/background.jpg",
              width: 250
            ),
          ),
           Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/background2.jpg",
              width: 250
            ),
          ),
          child
        ],
      ),
    );
  }
}