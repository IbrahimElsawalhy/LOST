import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/homee/home.dart';
import 'package:login_ui/Screens/register/register.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

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
                    colors: [Color.fromRGBO(210, 49, 153, 1)
                            ,Color.fromRGBO(114, 79, 199, 1)]
               )
            ),
          ),
        
        leading: IconButton(
            onPressed: () {Navigator.of(context).push(SlideLeft(Page: home_page()));},
            icon: const Icon(
              Icons.arrow_back_outlined,
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


      body: SingleChildScrollView(
      
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          
          children: <Widget>[
            
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(40.0, 70.0, 0.0, 0.0),
              child: Text(
          
                "Login",
                textAlign: TextAlign.left,
          
                style: GoogleFonts.nunitoSans(
                    height:1 ,
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 10.0),
              child: Text(
          
                "Please sign in to continue as a store owner",
          
                style: GoogleFonts.nunitoSans(
                    height:0 ,
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 16),
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Material(
                elevation: 2,
                shadowColor : Color.fromRGBO(210, 49, 153, 1),
              child: TextField(
                  controller: username,
                  
                  // decoration: InputDecoration(
                  //   enabled: true,
                    
                  //   fillColor: Colors.white, filled: true,

                  //   labelStyle: TextStyle(
                  //     color: Colors.black,
                  //   ),
                  //   labelText: "Username",
                  //   prefixIcon: Icon(Icons.people ,size: 25,color: Colors.grey[700]),  
                  //  //enabledBorder: OutlineInputBorder(),
                  //   // focusedBorder: ,
                  // ),
                   decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      filled: true,
                      labelStyle: TextStyle(
                       color: Colors.grey[700],
                      ),
                     labelText: "Phone Number or Email",
                     prefixIcon: Icon(Icons.people ,size: 25,color: Colors.grey[700]),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1))),
                      ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              
              child: Material(
                 elevation: 2,
                shadowColor : Color.fromRGBO(210, 49, 153, 1),
                
              
              child: TextField(
                  obscureText: true,
                  controller: password,
            //       decoration: InputDecoration(
            //         fillColor: Colors.white, filled: true,
            //          labelStyle: TextStyle(
            //   color: Colors.black,
            // ),
            //         labelText: "Password",
            //         prefixIcon: Icon(Icons.lock,size: 25,color: Colors.grey[700]),
            //         //  border: myinputborder(),
            //         // enabledBorder: myinputborder(),
            //         // focusedBorder: myfocusborder(),
            //       )
              decoration: InputDecoration(
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      
                      filled: true,
                      labelStyle: TextStyle(
                       color: Colors.grey[700],
                      ),
                     labelText: "Password",
                     prefixIcon: Icon(Icons.lock ,size: 25,color: Colors.grey[700]),
                      enabledBorder:OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1))),
             ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot your password?",
                style: GoogleFonts.ubuntu(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(100, 100, 100, 1)),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            
            Row(
              children: [
               
                Container(
                  alignment: Alignment.centerRight,
                  
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.35,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromRGBO(210, 49, 153, 1),
                            Color.fromRGBO(114, 79, 199, 1)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                 Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.fromLTRB(70.0, 0.0, 0.0, 0.0),
              child: const Image(image: AssetImage('assets/images/facebook.png')),
            ),
               Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              
              child: const Image(image: AssetImage('assets/images/google-plus.png')),
            ),
              ],
            ),
            
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: GestureDetector(
                onTap: () =>
                    {Navigator.of(context).push(SlideLeft(Page: MyHomePage()))},
                child: Text(
                  "Don't Have an Account? Sign up",
                  style: GoogleFonts.ubuntu(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(100, 100, 100, 1)),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}





// OutlineInputBorder myinputborder(BorderRadius borderRadius) {
//   //return type is OutlineInputBorder
//   return OutlineInputBorder(
//     //Outline border type for TextFeild
//     borderRadius: BorderRadius.all(Radius.circular(80)),
//     borderSide: BorderSide(
//           color:Colors.grey,
//           width: 1,
//         )
//   );
// }

// OutlineInputBorder myfocusborder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.all(Radius.circular(80)),
//     borderSide: BorderSide(
//             color:Colors.grey,
//           width: 1,
//         )  );
// }

    