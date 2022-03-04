import 'package:flutter/material.dart';
import 'package:Lost/Screens/homee/home.dart';
import 'package:Lost/Screens/login/login.dart';
import 'Screens/Dashboard/dashboard_main.dart';
import 'Screens/homee/loading_page.dart';
import 'Screens/login/login_user.dart';
import 'Screens/login/pin_code.dart';
import 'Screens/login/reset_pass.dart';
import 'Screens/register/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primaryColor: Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'splash',
      routes: {
        "splash": (context) => Splash(),
        "homepage": (context) => HomePage(),
        "loginscreen": (context) => LoginScreen(),
        "loginscreenuser": (context) => LoginScreenUser(),
        "resetpass": (context)=> ResetPass(),
        "pincode": (context)=> PinCode(),
        "registerpage":(context)=>RegisterPage(),
        "dashboardscreen":(context)=>DashboardScreen()

      },
    );
  }
}
