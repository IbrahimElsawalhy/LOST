import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Lost/Screens/animation/animation.dart';
import 'package:Lost/Screens/homee/home.dart';
import 'package:Lost/Screens/login/login.dart';
import 'package:Lost/Screens/login/login_user.dart';
import 'package:Lost/components/background_1.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _activeCurrentStep = 0;
  bool complete = false;
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  TextEditingController FirstName = TextEditingController();
  TextEditingController LastName = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController ConfirmPassword = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController storename = TextEditingController();
  TextEditingController storeaddress = TextEditingController();

  final items = ['cairo', 'giza', 'alex', 'asyot', 'elshareya', 'elfayom'];
  String? value;
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
      );

  List<Step> steplist() => [
        Step(
          state:
              _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeCurrentStep >= 0,
          title: const Text('Personal info'),
          content: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: FirstName,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "First name",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: LastName,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "Last name",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: PhoneNumber,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "Phone Number",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: Email,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "Email",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: Password,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "Password",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Material(
                    elevation: 2,
                    shadowColor: Color.fromRGBO(210, 49, 153, 1),
                    child: TextField(
                      controller: ConfirmPassword,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          labelText: "Conferm Password",
                          enabledBorder:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state: _activeCurrentStep <= 1
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 1,
            title: const Text('Store info'),
            content: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Material(
                      elevation: 2,
                      shadowColor: Color.fromRGBO(210, 49, 153, 1),
                      child: TextField(
                        controller: storename,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            labelText: "Store Name",
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1))),
                      ),
                    ),
                  ),                      
                    
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Material(
                      elevation: 2,
                      shadowColor: Color.fromRGBO(210, 49, 153, 1),
                      child: TextField(
                        controller: storeaddress,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            labelText: "Full Store Address",
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1))),
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            )),
        Step(
            state: _activeCurrentStep <= 2
                ? StepState.editing
                : StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${FirstName.text + ' ' + LastName.text}'),
                Text('Email: ${Email.text}'),
                Text('Password: ${Password.text}'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${storename.text}'),
              ],
            ))),
      ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            height: 100,
            width: 100,
            child: const Image(image: AssetImage('assets/images/logo_nav.png')),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(146, 39, 142, 1),
                  Color.fromRGBO(158, 31, 100, 1)
                ])),
          ),

          leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(SlideLeft(Page: LoginScreen()));
              },
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
        body: Theme(
                data: ThemeData(
                  canvasColor: Colors.white,
                  shadowColor: Color.fromRGBO(146, 39, 142, 1),
                    accentColor: Color.fromRGBO(146, 39, 142, 1),
                    // primarySwatch: Color.fromRGBO(146, 39, 142, 1),
                    colorScheme: ColorScheme.light(
                        primary: Color.fromRGBO(146, 39, 142, 1))),
                child: Stepper(
                  type: StepperType.horizontal,
                  
                  currentStep: _activeCurrentStep,
                  steps: steplist(),
                  onStepContinue: () {
                    if (_activeCurrentStep < (steplist().length - 1)) {
                      _activeCurrentStep += 1;
                    }
                    setState(() {});
                  },
                  onStepCancel: () {
                    if (_activeCurrentStep == 0) {
                      return;
                    }
                    _activeCurrentStep -= 1;
                    setState(() {});
                  },
                  onStepTapped: (int index) {
                    setState(() {
                      _activeCurrentStep = index;
                    });
                  },
                  controlsBuilder: (context, {onStepContinue, onStepCancel}) {
                    final isLastStep =
                        _activeCurrentStep == steplist().length - 1;

                    return Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ))),
                              onPressed: onStepContinue,
                              child: (isLastStep)
                                  ? ElevatedButton( 
                                      onPressed: () {
                                        var snackbar = SnackBar(
                                          elevation: 0,
                                          content: Text('Success',style: TextStyle(color: Colors.blue),) ,
                                          
                                          duration: Duration(seconds: 20),
                                          backgroundColor:Color.fromRGBO(146, 39, 142, 1),
                                          padding: EdgeInsets.all(10),
                                          
                                          action: SnackBarAction(label: 'go to dash board',textColor:Colors.white , onPressed: () => {
                                            Navigator.of(context)
                                                .push(SlideLeft(Page: LoginScreenUser()))
                                          }, ),
                                        );
                                        // Duration(seconds: 6);
                                        // Navigator.of(context).push(
                                        //     SlideLeft(Page: LoginScreenUser()));
                                        scaffoldkey.currentState!
                                            .showSnackBar(snackbar);
                                      },
                                      child: Text('submit'))
                                  : const Text('Next'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          if (_activeCurrentStep > 0)
                            Expanded(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ))),
                                onPressed: onStepCancel,
                                child: const Text('Back'),
                              ),
                            )
                        ],
                      ),
                    );
                  },
                ),
              ));
  }
}