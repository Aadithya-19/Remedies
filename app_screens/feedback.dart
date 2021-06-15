import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remedies/app_screens/addremedie.dart';
import 'package:remedies/app_screens/rounded_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'background.dart';
import 'choose_screen.dart';
import 'StomachAche.dart';
import 'english_screen.dart';
import 'remedies.dart';
import 'rounded_feedback_field.dart';
import 'settings-screen.dart';
import 'splash_screen.dart';
import 'dart:math';

class FeedbackScreen extends StatefulWidget {
  FeedbackScreen({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<FeedbackScreen> {
  main() {
    var rng = new Random();
    for (var i = 0; i > 1; i++) {
      print(rng.nextInt(100000000));
    }
  }
  String feedback;

  getFeedback(fback){
    this.feedback = fback;
  }
  createData() async {
    // DocumentReference documentReference = FirebaseFirestore.instance.collection("feedback").doc("Feedback"+main());
    //
    // Map<String, dynamic> Feedback = {
    //   "feedback" : this.feedback,
    // };

    FirebaseFirestore.instance.collection("feedback").add(
        {
          "fback": feedback,
        }

    ).then(showAlertDialog(context));
  }

  TextEditingController feedbackValidator = new TextEditingController();
  showAlertDialog(BuildContext context) {
    // set up the button

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thanks for your feedback, we will try to improve our app."),
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return new Scaffold(
        drawer: SideDrawer(),
        appBar: buildBar(context),
        body: Center(
            // child:Background(

            child: Container(
                color: Colors.white,
                child: Background(
                    child: SingleChildScrollView(
                        child: Center(
                            child: Column(children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Feedback",
                    style: GoogleFonts.oswald(
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "We would love to hear from you about your experience in our app and any feedbacks about our app. This would really help us to improve the app and make it better for you.",
                        style: GoogleFonts.oswald(fontSize: 27.0),
                      )),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    child: Column(children: [
                      Container(
                        child: RoundedFeedbackField(
                          hintText: "Your feedback",
                          onChanged: (String text) { getFeedback(text);},
                        ),
                      ),
                      Container(
                        child: RoundedButton(
                            text: "SUBMIT",
                            press: () {
                             createData();

                            }),
                      )
                    ]),
                  )
                ])))))));
  }

  Widget buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: Text('Remediez+'),
      leading: IconButton(
          onPressed: () {
            SideDrawer();
          },
          icon: Icon(
            Icons.menu_rounded,
            color: Colors.white,
          )),
    );
  }

  navigateToPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipeOne()));
  }
}

class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new ListTile(title: new Text(this.name));
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    './images/REMEDIEZ+LOGO.png',
                    height: 130,
                    width: 200,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {navigateToPage(context)},
          ),
          ListTile(
            leading: Icon(Icons.wysiwyg),
            title: Text('Remedies'),
            onTap: () => {navigateToPage2(context)},
          ),
          ListTile(
            leading: Icon(Icons.sanitizer_sharp),
            title: Text('Traditional Remedies'),
            onTap: () => {navigateToPage2(context)},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Add Your Remedy'),
            onTap: () => {navigateToPage3(context)},
          ),
          ListTile(
            leading: Icon(Icons.recommend),
            title: Text('Feedback'),
            onTap: () => {navigateToPage4(context)},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {navigateToPage5(context)},
          ),
        ],
      ),
    );
  }

  navigateToPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => EnglishScreen()));
  }

  navigateToPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Remedies()));
  }

  navigateToPage3(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AR()));
  }

  navigateToPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FeedbackScreen()));
  }

  navigateToPage5(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FirstScreen()));
  }
}

Widget getListView() {
  var listview = ListView();
}
