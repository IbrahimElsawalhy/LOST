import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/Screens/animation/animation.dart';
import 'package:login_ui/Screens/login/login.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _activeCurrentStep = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController storename = TextEditingController();

  List<Step> stepList() => [
        Step(
          state:
              _activeCurrentStep <= 0 ? StepState.indexed : StepState.complete,
          isActive: _activeCurrentStep >= 0,
          
          title: const Text('Account'),
          content: Container(
            child: Column(
              children: [ 
                
               TextField(
                  controller: name,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Full Name",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Email",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  controller: pass,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Password",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
                    const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
        Step(
            state: _activeCurrentStep <= 1
                ? StepState.indexed
                : StepState.complete,
            isActive: _activeCurrentStep >= 1,
            title: const Text('Address'),
            content: Container(
              child: Column(
                children: [
                   TextField(
                  controller: storename,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Store Name",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),   const SizedBox(
                    height: 10,
                  ),
                   TextField(
                  controller: address,
                  decoration: InputDecoration(
                    fillColor: Colors.grey[350], filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Full Store Address",
                    border: myinputborder(),
                    enabledBorder: myinputborder(),
                    focusedBorder: myfocusborder(),
                  )),
                   const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeCurrentStep >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name.text}'),
                Text('Email: ${email.text}'),
                Text('Password: ${pass.text}'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${storename.text}'),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget> [ 
               Container(
                alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              child: 
            Image.asset(
              'assets/images/logo.jpg',
              width: 220.0,
              ),
              ),
              Container(
            
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 10.0),
              child: Text(
          
                "Create new account",
          
                style: GoogleFonts.nunitoSans(
                    height:0 ,
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 25),
              ),
            ),
            Stepper(
              
        //type: StepperType.horizontal,
        currentStep: _activeCurrentStep,
        steps: stepList(),
        onStepContinue: () {
          if (_activeCurrentStep < (stepList().length - 1)) {
            setState(() {
              _activeCurrentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_activeCurrentStep == 0) {
            return;
          }

          setState(() {
            _activeCurrentStep -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeCurrentStep = index;
          });
        },
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(80)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ));
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(80)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ));
}
