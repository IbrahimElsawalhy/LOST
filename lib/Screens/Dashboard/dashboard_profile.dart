
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

void main() {
  runApp(DashboardProfilePage());
}

class DashboardProfilePage extends StatelessWidget {
  DashboardProfilePage({Key? key}) : super(key: key);
    TextEditingController name = TextEditingController();
        TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
      final formKey = GlobalKey<FormState>();
    final scaffoldKey = GlobalKey<ScaffoldState>();



  late final controller;
  get color => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            key : scaffoldKey,
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
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(158, 31, 100, 1),
                      Color.fromRGBO(146, 39, 142, 1),
                    ])),
              ),
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text("Personal"),
                  ),
                  Tab(
                    child: Text("Store"),
                  ),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: Form(
              key: formKey,
              child: TabBarView(
                children: [
                  Container(
                      child: ListView(children: [
                    Stack(
                      // alignment: Alignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 25),
                              alignment: Alignment.center,
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 4,
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 10,
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0, 10))
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/me.jpg",
                                      ))),
                            ),
                            Container(
                              child: Text(
                                "Ibrahim Elsawalhy",
                                style: GoogleFonts.nunitoSans(
                                  height: 1,
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 25),
                              alignment: Alignment.center,
                            ),
                            Container(
                              child: Text(
                                "ibrahimelsawalhy@gmail.com",
                                style: GoogleFonts.nunitoSans(
                                  height: 1,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              margin: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.width / 50,
                                  bottom:
                                      MediaQuery.of(context).size.width / 20),
                              alignment: Alignment.center,
                            ),
   Container(
              margin: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(158, 31, 100, 1),
                child: TextFormField(
                
                  validator: Validators.compose([
                    Validators.required('Name is required'),
                  ]),
                  controller: name,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      
                      labelText: "Name",
                      hintText: "Ibrahim Elsawalhy",
                      hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
                      prefixIcon:
                          Icon(Icons.person, size: 25, color: Colors.grey[700]),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1))),
                ),
              ),
            ),            Container(
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(158, 31, 100, 1),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  validator: Validators.compose([
                    Validators.required('email is required'),
                    Validators.email('invalid email address')
                  ]),
                  controller: email,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      labelText: "Email",
                      hintText: "ibrahimelsawalhy@gmail.com",
                       hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      prefixIcon:
                          Icon(Icons.email, size: 25, color: Colors.grey[700]),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1))),
                ),
              ),
            ),  Container(
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 10.0),
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(158, 31, 100, 1),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  validator: Validators.compose([
                    Validators.required('password is required'),
                    Validators.minLength(6, "please enter at least 8 chars")
                  ]),
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      errorStyle: TextStyle(
                        color: Colors.red,
                        backgroundColor: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      labelText: "Password",
                      hintText: "********",
                       hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                      prefixIcon:
                          Icon(Icons.lock, size: 25, color: Colors.grey[700]),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1))),
                ),
              ),
            ),         Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  child: RaisedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(email.text);
                        print(password.text);
                        print('success');
                        Navigator.of(context).pushReplacementNamed("homepage");
                      } 
                      else {
                        return null;
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.50,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromRGBO(146, 39, 142, 1),
                            Color.fromRGBO(158, 31, 100, 1)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style:
                            GoogleFonts.nunitoSans(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),        ],
            
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 1.7,
                              top: MediaQuery.of(context).size.width / 4),
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(158, 31, 100, 1),
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ])),
                  Icon(Icons.directions_transit),
                ],
              ),
            ),
          ),
        ));
  }
}
