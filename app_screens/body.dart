// ignore: avoid_web_libraries_in_flutter
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remedies/app_screens/choose_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'authentication.dart';
import 'login_screen.dart';
import 'background.dart';
import 'or_divider.dart';
import 'social_icon.dart';
import 'already_have_an_account_check.dart';
import 'rounded_button.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  SignUp createState() => SignUp();
}


class SignUp extends State<Body> {
    String pwd;
    String email;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;


  @override
  initState() {

    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    super.initState();

  }
    addEmail(email){
      this.email = email;

    }
    addpwd(pwd){
      this.pwd = pwd;

    }
    createData() async {
      // DocumentReference documentReference = FirebaseFirestore.instance.collection("feedback").doc("Feedback"+main());
      //
      // Map<String, dynamic> Feedback = {
      //   "feedback" : this.feedback,
      // };

      FirebaseFirestore.instance.collection("users").add(
          {
            "email": email,
            "pwd": pwd,
          }
      ).then(showAlertDialog(context));
    }
    showAlertDialog(BuildContext context) {
      // set up the button

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text("Thanks for registering to our app, feel free to browse through."),
        actions: [],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  navigateToSubPage5(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseScreen()));
  }
  //Example code of how to sign in with Google.



    String emailValidator(String value) {
      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value)) {
        return 'Email format is invalid';
      } else {
        return null;
      }
    }

    String pwdValidator(String value) {
      if (value.length < 8) {
        return 'Password must be longer than 8 characters';
      } else {
        return null;
      }
    }
    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery
          .of(context)
          .size;

      return Background(
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset(
                './images/REMEDIEZ+LOGO.png',
                height: 230,
                width: 300,
              ),
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              RoundedInputField(
                hintText: "Your Email",
                // ignore: unnecessary_statements
                onChanged: (String email) { addEmail(email);},

              ),
              RoundedPasswordField(
                hintText: "Your Password",
                onChanged: (String pwd) { addpwd(pwd);},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                        email: emailInputController.text,
                        password: pwdInputController.text)
                        .then((currentUser) => FirebaseFirestore.instance
                        .collection("users")
                        .add({
                      "email": emailInputController.text,
                      "password": pwdInputController.text,
                    })
                        .then((result) => {
                      emailInputController.clear(),
                      pwdInputController.clear(),
                    })
                        .catchError((err) => print(err)))
                        .catchError((err) => print(err));

                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () => googleSignIn().whenComplete(() async {
                  var user = await FirebaseAuth.instance.currentUser;

                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginScreen()));
                }),
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    iconSrc: 'lib/app_screens/assets/icons/google-plus.svg',
                    press: () => googleSignIn().whenComplete(() async {
                      var user = await FirebaseAuth.instance.currentUser;

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    }),
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
