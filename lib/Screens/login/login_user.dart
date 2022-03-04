import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class LoginScreenUser extends StatelessWidget {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/logo_nav.png'),
          width: 100,
          height: 100,
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
              Navigator.of(context).pushReplacementNamed("homepage");
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.end,

          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(30.0, 50.0, 0.0, 0.0),
              child: Text(
                "Login",
                textAlign: TextAlign.left,
                style: GoogleFonts.nunitoSans(
                  height: 1,
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(29.0, 20.0, 26.0, 0.0),
              child: Text(
                "Please sign in to continue as a store owner",
                style: GoogleFonts.nunitoSans(
                    height: 0,
                    color: Color.fromRGBO(100, 100, 100, 1),
                    fontSize: 16),
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
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
                      hintText: "example@gmail.com",
                      prefixIcon:
                          Icon(Icons.email, size: 25, color: Colors.grey[700]),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1))),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
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
                      hintText: "[a-z]+[0-9]+{@#%^&*}",
                      prefixIcon:
                          Icon(Icons.lock, size: 25, color: Colors.grey[700]),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1))),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: GestureDetector(
                onTap: () =>
                    {Navigator.of(context).pushReplacementNamed("resetpass")},
                child: Text(
                  "Forgot your password?",
                  style: GoogleFonts.ubuntu(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(100, 100, 100, 1)),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 0),
              child: GestureDetector(
                onTap: () => {
                  Navigator.of(context).pushReplacementNamed("registerpage")
                },
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
