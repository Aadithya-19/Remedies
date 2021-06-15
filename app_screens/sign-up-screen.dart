// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter1/app_screens/login_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class SignupPage extends StatefulWidget {
//   SignupPage({Key key}) : super(key: key);
//
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }
//
// class _RegisterPageState extends State<SignupPage> {
//   final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
//   TextEditingController userNameInputController;
//   TextEditingController emailInputController;
//   TextEditingController pwdInputController;
//   TextEditingController confirmPwdInputController;
//
//   @override
//   initState() {
//     userNameInputController = new TextEditingController();
//     emailInputController = new TextEditingController();
//     pwdInputController = new TextEditingController();
//     confirmPwdInputController = new TextEditingController();
//     super.initState();
//   }
//
//   String emailValidator(String value) {
//     Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//     RegExp regex = new RegExp(pattern);
//     if (!regex.hasMatch(value)) {
//       return 'Email format is invalid';
//     } else {
//       return null;
//     }
//   }
//
//   String pwdValidator(String value) {
//     if (value.length < 8) {
//       return 'Password must be longer than 8 characters';
//     } else {
//       return null;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: Container(
//           color: Colors.lightBlueAccent,
//
//           child: Center(
//             child: Padding(
//
//                 padding: const EdgeInsets.all(20.0),
//
//                 child: SingleChildScrollView(
//                     child: Form(
//                       key: _registerFormKey,
//                       child: Column(
//                         children: <Widget>[
//                           Image.asset(
//                             './images/REMEDIEZ+LOGO.png',
//                             width: 300,
//                             height: 300,
//                           ),
//                           SizedBox(
//                             height: 20.0,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               focusedBorder:OutlineInputBorder(
//                                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                                 borderRadius: BorderRadius.circular(25.0),
//                               ),
//                               border: OutlineInputBorder(),
//                               labelText: 'User Name',
//                             ),
//                             controller: userNameInputController,
//                             validator: (value) {
//                               if (value.length < 3) {
//                                 return "Please enter a valid first name.";
//                               }
//                             },
//                           ),
//                           SizedBox(
//                             height: 20.0,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               focusedBorder:OutlineInputBorder(
//                                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                                 borderRadius: BorderRadius.circular(25.0),
//                               ),
//                               border: OutlineInputBorder(),
//                               labelText: 'Email ID',
//                             ),controller: emailInputController,
//                             keyboardType: TextInputType.emailAddress,
//                             validator: emailValidator,
//                           ),
//                           SizedBox(
//                             height: 20.0,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               focusedBorder:OutlineInputBorder(
//                                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                                 borderRadius: BorderRadius.circular(25.0),
//                               ),
//                               border: OutlineInputBorder(),
//                               labelText: 'Password',
//                             ),controller: pwdInputController,
//                             obscureText: true,
//                             validator: pwdValidator,
//                           ),
//                           SizedBox(
//                             height: 20.0,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                               focusedBorder:OutlineInputBorder(
//                                 borderSide: const BorderSide(color: Colors.white, width: 2.0),
//                                 borderRadius: BorderRadius.circular(25.0),
//                               ),
//                               border: OutlineInputBorder(),
//                               labelText: 'Confirm Password',
//                             ),controller: confirmPwdInputController,
//                             obscureText: true,
//                             validator: pwdValidator,
//                           ),
//                           SizedBox(
//                             height: 50.0,
//                           ),
//                           Container(
//                             height:50.0,
//                             width:150.0,
//                             child: RaisedButton(
//                               textColor: Colors.white,
//                               elevation: 6.0,
//                               color:Colors.green,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.all(Radius.circular(30.0))
//                               ),
//                               child: Text("Sign Up", style : TextStyle(fontSize: 20)),
//
//                               onPressed: () {
//                                 // FirebaseAuth.instance.
//                                 if (_registerFormKey.currentState.validate()) {
//                                   if (pwdInputController.text ==
//                                       confirmPwdInputController.text) {
//                                     var uid;
//                                     FirebaseAuth.instance
//                                         .createUserWithEmailAndPassword(
//                                         email: emailInputController.text,
//                                         password: pwdInputController.text)
//                                         .then((currentUser) => FirebaseFirestore.instance
//                                         .collection("users")
//                                         .add({
//                                       "username": userNameInputController.text,
//                                       "email": emailInputController.text,
//                                       "password":pwdInputController.text,
//                                     })
//                                         .then((result) => {
//                                       Navigator.pushAndRemoveUntil(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) => LoginScreen()),
//                                               (_) => false),
//                                       userNameInputController.clear(),
//                                       emailInputController.clear(),
//                                       pwdInputController.clear(),
//                                       confirmPwdInputController.clear()
//                                     })
//                                         .catchError((err) => print(err)))
//                                         .catchError((err) => print(err));
//                                   } else {
//                                     showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return AlertDialog(
//                                             title: Text("Error"),
//                                             content: Text("The passwords do not match"),
//                                             actions: <Widget>[
//                                               FlatButton(
//                                                 child: Text("Close"),
//                                                 onPressed: () {
//                                                   Navigator.of(context).pop();
//                                                 },
//                                               )
//                                             ],
//                                           );
//                                         });
//                                   }
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ))),
//           ),
//         ));
//   }
// }