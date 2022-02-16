import 'package:flutter/material.dart';


class SlideLeft extends PageRouteBuilder {
  final Page;
  SlideLeft({this.Page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => Page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = Offset(0.1, 0.0);
              var end = Offset(0.0, 0.0);
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.slowMiddle);
              return SlideTransition(
                position: tween.animate(curvesanimation),
                child: child,
              );
            });
}

class SlideRight extends PageRouteBuilder {
  final Page;
  SlideRight({this.Page})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => Page,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = Offset(0.1, 0.0);
              var end = Offset(0.0, 0.0);
              var tween = Tween(begin: begin, end: end);
              var curvesanimation =
                  CurvedAnimation(parent: animation, curve: Curves.slowMiddle);
              return SlideTransition(
                position: tween.animate(curvesanimation),
                child: child,
              );
            });
}

 

// class SlideRight extends PageRouteBuilder {
//   final Page;
//   SlideRight({this.Page})
//       : super(
//             pageBuilder: (context, animation, secondaryAnimation) => Page,
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               var begin = Offset(0.0, 0.1);
//               var end = Offset(0.0, 0.0);
//               var tween = Tween(begin: begin, end: end);
//               var offsetAnimation = animation.drive(tween);
//               return SlideTransition(
//                 position: offsetAnimation,
//                 child: child,
//               );
//             });
// }
