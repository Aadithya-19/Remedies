import 'package:flutter/material.dart';
import 'package:remedies/app_screens/TamilSt.dart';
import 'package:remedies/app_screens/TamilStAc.dart';
import 'package:remedies/app_screens/HindiStAc.dart';
import 'package:remedies/app_screens/badbreathhindi.dart';
import 'package:remedies/app_screens/cough_tamil.dart';
import 'package:remedies/app_screens/indigestiontamil.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'HindiSt.dart';
import 'TeluguSt.dart';
import 'HindiStAc.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'background.dart';
import 'badbreathtamil.dart';
import 'badbreathtelugu.dart';
import 'choose_screen.dart';
import 'cough_hindi.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'hindi_screen.dart';
import 'remedies.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';

class BadBreathEng extends StatefulWidget {
  BadBreathEng({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<BadBreathEng> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathEng()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathHindi()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathTamil()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathTelugu()));
  }

  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return new Scaffold(
        drawer: SideDrawer(),
        appBar: buildBar(context),
        body: Container(
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/v870-mynt-01.jpg'),
                    fit: BoxFit.cover)
            ),            child: SingleChildScrollView(

            child: Column(children: [
              Container(
                alignment: Alignment.topRight,
                child: DropdownButton(
                    itemHeight: 50.0,
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "English",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Hindi",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text(
                            "Tamil",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          value: 3),
                      DropdownMenuItem(
                          child: Text(
                            "Telugu",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                        print(value);
                      });

                      if (value == 1) {
                        navigateToSubPage(context);
                      }
                      if (value == 2) {
                        navigateToSubPage2(context);
                      }
                      if (value == 3) {
                        navigateToSubPage3(context);
                      }
                      if (value == 4) {
                        navigateToSubPage4(context);
                      }
                    }),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Bad breath Remedy",
                  style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                    "Bad breath can be caused due to poor dental hygiene, dehydration or bad food habits. The below remedies will help you to get rid of the bad breath.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                      "Symptoms:",                    textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  1. A white coating on the tongue especially at the back of the tongue.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. Dry mouth.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. Thick saliva and a constant need to clear your throat.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. Constant sour, bitter metallic taste",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. Bad odor in the mouth",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("Solution: ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  1. Parsley is a popular folk remedy for bad breath. Its fresh scent and high chlorophyll content suggest that it can have a deodorizing effect.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. Research shows that mouth dryness often causes bad breath. Saliva plays a very important role in keeping your mouth clean. Without it, bacteria thrive. Prevent dry mouth by keeping your body hydrated. Drinking water (not caffeinated or sugary drinks) throughout the day will help encourage saliva production.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. Yogurt contains healthy bacteria called lactobacillus. These healthy bacteria can help combat bad bacteria in various parts of your body, like your gut.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. Milk is a well-known cure for bad breath. Research shows that drinking milk after eating garlic can significantly improve “garlicky” breath.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. One study found that raw apples have a powerful effect against garlic breath. Certain natural compounds in apples neutralize the foul-smelling compounds in garlic.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      "Note: If the pain still persists, we recommend you to see a doctor.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              // Container(
              //     alignment: Alignment.topLeft,
              //     child: Text("  - Lime or Lemon juice, baking soda, and water will help to reduce gas and indigestion. It may also improve liver secretion and intestinal mobility.",
              //         textAlign: TextAlign.start,
              //         style: GoogleFonts.oswald(fontSize: 20.0))),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //     alignment: Alignment.topLeft,
              //     child: Text("  - Lime or Lemon juice, baking soda, and water will help to reduce gas and indigestion. It may also improve liver secretion and intestinal mobility.",
              //         textAlign: TextAlign.start,
              //         style: GoogleFonts.oswald(fontSize: 20.0))),
              // SizedBox(
              //   height: 10.0,
              // ),
              // Container(
              //     alignment: Alignment.topLeft,
              //     child: Text("  - Lime or Lemon juice, baking soda, and water will help to reduce gas and indigestion. It may also improve liver secretion and intestinal mobility.",
              //         textAlign: TextAlign.start,
              //         style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),

            ]),
          ),
          ),
        )
    );
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
