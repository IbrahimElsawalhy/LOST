import 'package:flutter/material.dart';

class DashboardHomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _DashboardHomePageState createState() => new _DashboardHomePageState();
}

class _DashboardHomePageState extends State<DashboardHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
       appBar: AppBar(
                      centerTitle: true,
                      title: Container(
                        height: 100,
                        width: 100,
                        child: const Image(
                            image: AssetImage('assets/images/logo_nav.png')),
                      ),
                      flexibleSpace: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40)),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(158, 31, 100, 1),
                              Color.fromRGBO(146, 39, 142, 1),
                            ])),
                      ),
                      leading: IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('homepage');
                          },
                          padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
                          icon: const Icon(
                            Icons.arrow_back_outlined,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          )),
                      actions: [
                        IconButton(
                            padding: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.logout,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))
                      ],
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only( top: screenHeight*0.04-16.0, left: screenWidth*0.06-14.0,bottom: screenHeight*0.04-16.0,),
              child: Text(
                "All reports",
                style: TextStyle(fontSize: 28.0),
                textAlign: TextAlign.left,
              ),
            ),
            Stack(
              children: [
                Container(
                  
                  height: screenHeight * 0.2,
                        margin: EdgeInsets.only(
                        top: screenHeight*0.04-16.0,
                        bottom: screenHeight*0.04-16.0,
                        left: screenWidth*0.06-14.0,
                        right: screenWidth*0.06-14.0,
                      ),                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color:Colors.grey,
                            blurRadius: 12.0,
                          offset: Offset(0, 10),
                        )
                      ]),
                ),
                Positioned(
                  child: Row(                  
                    children: [
                           Image.asset('assets/images/1_600x450.png',width: 110,height: 110,),
                      Container(
                        padding: EdgeInsets.only(
                          top: screenHeight*0.075-16.0,
                          bottom:screenHeight*0.065-16.0,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Xiaomi Redmi Note 9s",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF171F24)),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.045-16.0),
                          child:Row(children:[
                              Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status               ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 22/5/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)))])),
                                  Text("  Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.055-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Maadi ",style: TextStyle( fontSize: 14),)])) ,   
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5 - 16.0,
                      margin: EdgeInsets.only(
                        bottom: screenWidth*0.06-16.0,
                        right: screenWidth*0.05-14.0,
                        left: screenWidth*0.06-14.0
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color:    Colors.grey,
                                blurRadius: 12.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(                         
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.135-16.0,),
                          child: Column(                      
                          children: [
                          Image.asset('assets/images/1_250x188 (1).png',width: 110,height: 110,),
                          Text(
                            "OPPO A12",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF171F24)),
                          ),
                          ],),),    
                          Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.073-16.0),
                          child:Row(children:[
                            Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status     ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 22/5/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)),
                          )]                        
                          )),
                          Text("    Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.089-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Maadi ",style: TextStyle( fontSize: 14),) ,   
                        ]   
                          )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                 Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5 - 16.0,
                      margin: EdgeInsets.only(
                        bottom: screenWidth*0.06-16.0,
                        right: screenWidth*0.06-14.0,
                        left: screenWidth*0.042-14.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color:    Colors.grey,
                                blurRadius: 12.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(                         
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.12-16.0,),
                          child: Column(                      
                          children: [
                       Image.asset('assets/images/5_600x450.png',width: 110,height: 110,),
                          Text(
                            "OPPO Reno 4",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF171F24)),
                          ),
                          ],),),    
                          Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.0575-16.0),
                          child:Row(children:[
                            Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status    ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 11/8/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)),
                          )]                        
                          )),
                          Text("  Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.069-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Nasr ",style: TextStyle( fontSize: 14),) ,   
                        ]
                          
                          )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
               
              ],
            ),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  height: screenHeight * 0.2,
                   margin: EdgeInsets.only(
                        top: screenHeight*0.04-16.0,
                        bottom: screenHeight*0.04-16.0,
                         left: screenWidth*0.06-14.0,
                        right: screenWidth*0.06-14.0),
                      decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color:    Colors.grey,
                            blurRadius: 12.0,

                          offset: Offset(0, 10),
                        )
                      ]),
                ),
                Positioned(
                  top: 20.0,
                  child: Row(
                    children: [
                        Container(
                        padding: EdgeInsets.only(
                          top: screenHeight*0.045-16.0,
                          bottom:screenHeight*0.045-16.0,
                        left: screenWidth*0.13-14.0,
                        right: screenWidth*0.08-14.0, 
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Samsung Galaxy A12",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF171F24)),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.045-16.0),
                          child:Row(children:[
                              Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status               ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 22/5/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)))])),
                                  Text("  Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.055-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Maadi ",style: TextStyle( fontSize: 14),)])) ,   
                          ],
                        ),
                      ),
                      
                       Image.asset('assets/images/3_600x450.png',width: 110,height: 110,),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5 - 16.0,
                      margin: EdgeInsets.only(
                        bottom: screenWidth*0.06-16.0,
                        right: screenWidth*0.05-14.0,
                        left: screenWidth*0.06-14.0
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color:    Colors.grey,
                                blurRadius: 12.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(                         
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.135-16.0,),
                          child: Column(                      
                          children: [
                          Image.asset('assets/images/1_250x188 (1).png',width: 110,height: 110,),
                          Text(
                            "OPPO A12",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF171F24)),
                          ),
                          ],),),    
                          Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.073-16.0),
                          child:Row(children:[
                            Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status     ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 22/5/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)),
                          )]                        
                          )),
                          Text("    Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.089-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Maadi ",style: TextStyle( fontSize: 14),) ,   
                        ]   
                          )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                 Stack(
                  children: [
                    Container(
                      height: screenHeight * 0.3,
                      width: screenWidth * 0.5 - 16.0,
                      margin: EdgeInsets.only(
                        bottom: screenWidth*0.06-16.0,
                        right: screenWidth*0.06-14.0,
                        left: screenWidth*0.042-14.0,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color:    Colors.grey,
                                blurRadius: 12.0,
                              offset: Offset(0, 10),
                            )
                          ]),
                    ),
                    Positioned(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Container(                         
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.12-16.0,),
                          child: Column(                      
                          children: [
                       Image.asset('assets/images/5_600x450.png',width: 110,height: 110,),
                          Text(
                            "OPPO Reno 4",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF171F24)),
                          ),
                          ],),),    
                          Container(                           
                          padding: EdgeInsets.only(bottom: 10,left: screenWidth*0.0575-16.0),
                          child:Row(children:[
                            Icon(Icons.report_rounded ,size: 15,color: Colors.orange,),
                          Text(" Status    ",style: TextStyle( fontSize: 14,),) ,   
                          Icon(Icons.calendar_today,size: 14,color: Colors.purple,),
                          Text(
                            " 11/8/2021",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF778087)),
                          )]                        
                          )),
                          Text("  Report From ",style: TextStyle( fontSize: 14,fontWeight:FontWeight.w600)) ,   
                          Container(
                            
                            padding: EdgeInsets.only(left: screenWidth*0.069-16.0, top: 4),
                          child:Row(children:[
                          Icon(Icons.location_on ,size: 15,color: Colors.red),
                          Text(" Cairo - Nasr ",style: TextStyle( fontSize: 14),) ,   
                        ]
                          
                          )
                          )
                        ],
                      ),
                    ),
                  ],
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}