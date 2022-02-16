import 'package:flutter/material.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/login/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/components/background_1.dart';

class home_page extends StatelessWidget {
  var text;

  get children => null;

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
                    colors: [Color.fromRGBO(146, 39, 142, 1)
                            ,Color.fromRGBO(158, 31, 100, 1)]
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
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              
              children: [
                Column(
                  children:[
                    Container(

                      alignment: Alignment.center,
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
                      child: const Image(image: AssetImage('assets/images/Stolen_without_space.png')),              
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 0.0), 
                      child: Text(
                        'Make report',
                        textAlign: TextAlign.center,
                        
                        style: GoogleFonts.nunitoSans(
                          color: Color.fromRGBO(146, 39, 142, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,),
                          
                      ),
                      
                    )
                  ]
                ),

            Column(
              
                  children:[
                    
             // ignore: deprecated_member_use
             RaisedButton( 
               onPressed: () {
                      Navigator.of(context).push(SlideLeft(Page: LoginScreen()));
                    }, 
                    color:Colors.white,  
            child: Column(
              
                            children:[
                              Container( 
                    
                                height: 120,
                                width: 120,
                                margin: EdgeInsets.fromLTRB(90.0, 40.0, 0.0, 0.0),
                                child: const Image(image: AssetImage('assets/images/StoreOwner_without_space.png')),
                  
                              ),
                              Container(
                                margin:EdgeInsets.fromLTRB(90.0, 10.0, 0.0, 0.0) ,
                                child: Text(
                                  'Store owner',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunitoSans(
                                  color: Color.fromRGBO(158, 31, 100, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,),
                                
                                ),
                            
                              ),
                            ]
                          )
                  
             )
                  ]
            )
                
              ],
            ),
            Container(
              height: 270,
              width: 270,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: const Image(image: AssetImage('assets/images/vector.png')),
            ),

            
          ]
        ),
      ),
    );
  }
}


