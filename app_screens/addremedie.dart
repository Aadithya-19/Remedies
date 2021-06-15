import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remedies/app_screens/remedies.dart';
import 'package:remedies/app_screens/rounded_button.dart';
import 'package:remedies/app_screens/roundedemail.dart';
import 'package:remedies/app_screens/roundedremedysymptoms.dart';
import 'package:remedies/app_screens/roundedsolutionfield.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'RoundedRemedyName.dart';
import 'background.dart';
import 'StomachAche.dart';
import 'english_screen.dart';
import 'feedback.dart';
import 'splash_screen.dart';

class AR extends StatefulWidget {
  AR({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<AR> {
  String email;
  String rName;
  String symptoms;
  String solution;

  void clearText() {
  }
  addEmail(email){
    this.email = email;

  }
  name(name){
    this.rName = name;

  }
  addSymptoms(symptoms){
    this.symptoms = symptoms;

  }
  addSolution(solution){
    this.solution = solution;

  }
  createData() async {
    // DocumentReference documentReference = FirebaseFirestore.instance.collection("feedback").doc("Feedback"+main());
    //
    // Map<String, dynamic> Feedback = {
    //   "feedback" : this.feedback,
    // };

    FirebaseFirestore.instance.collection("remedies").add(
        {
          "email": email,
          "remedy_name":rName,
          "symptoms":symptoms,
          "solution":solution,
        }
    ).then(showAlertDialog(context));
  }
  showAlertDialog(BuildContext context) {
    // set up the button

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Thanks for your remedy, we will review it and email you about the further details."),
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

    return new Scaffold(
        drawer: SideDrawer(),
        appBar: buildBar(context),
        body: Center(
            child: Background(
            child: SingleChildScrollView(
                child: Container(
                        child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20.0),

                          child: Text(

                            "Add a Remedy",
                            style: GoogleFonts.oswald(
                              fontSize: 27.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),

                        Container(
                          child: Column(children: [
                            Container(
                              child: RoundedEmailField(
                                hintText: "Your Email",
                                onChanged: (String email) { addEmail(email);},
                              ),
                            )
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Container(
                              child: RoundedRemedyNameField(
                                hintText: "The name of your remedy",
                                onChanged: (String rName) { name(rName);},
                              ),
                            )
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Container(
                              child: RoundedRSymptomsField(
                                hintText: "Symptoms",
                                onChanged: (String symptoms) { addSymptoms(symptoms);},
                              ),
                            )
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Container(
                              child: RoundedSolutionField(
                                hintText: "Solution or Remedy",
                                onChanged: (String solution) { addSolution(solution);},
                              ),
                            )
                          ]),
                        ),
                        Container(
                          child: RoundedButton(
                              text: "SUBMIT",
                              press: () {
                                createData();
                              }),
                        )
                      ]),
                    ))))));
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
            onTap: () => {navigateToPage6(context)},
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
  navigateToPage6(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TraditionalRemedies()));
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
