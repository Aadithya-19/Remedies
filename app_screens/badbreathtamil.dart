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
import 'badbreatheng.dart';
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

class BadBreathTamil extends StatefulWidget {
  BadBreathTamil({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<BadBreathTamil> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathTamil()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BadBreathHindi()));
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
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  alignment: Alignment.topRight,
                  child: DropdownButton(
                      itemHeight: 50.0,
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Tamil",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "English",
                            textAlign: TextAlign.end,
                            style: TextStyle(fontSize: 20.0),
                          ),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "Hindi",
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
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20.0),
                    child: Text("வாய் துர்நாற்றத்திற்கு தீர்வு",
                        style: GoogleFonts.oswald(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "வாய் துர்நாற்றம் பற்களின் தூய்மையின்மை அஜீரணம் மற்றும் ஆரோக்கியமற்ற உணவு பழக்கவழக்கத்தில் வருகிறது. கீழே குறிப்பிட்டுள்ள குறிப்புகள் வாய் துர்நாற்றத்தில் இருந்து தீர்வு கொடுக்கும.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("அறிகுறிகள்:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  1.  நாக்கில் வெள்ளை படலம், குறிப்பாக பின் நாக்கில்  வெள்ளை படலம்",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  2. நாக்கு மற்றும் வாய் உலர்தல்",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  3. அடர்த்தியான உமிழ்நீர் மற்றும் தொண்டை உலர்ந்த தன்மை",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  4. வாயில் கசப்பு தன்மை",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  5. வாய் துர்நாற்றம்",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("தீர்வு: ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(
                            fontSize: 25.0, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  1. பார்ஸ்லி இலைகள் அதிகமாக உணவில் எடுத்துக் கொண்டால் வாய் துர்நாற்றத்தில் இருந்து நிவாரணம் கிடைக்கும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  2. வாயில் உமிழ்நீர் குறைபாடு மற்றும் உலர்ந்த தன்மை வாய் துர்நாற்றத்தை அதிகப்படுத்தும். உமிழ்நீர் வாயில் உள்ள பாக்டீரியாக்களை எதிர்த்து போராட உதவுகிறது. உடலில் நீர்ச்சத்து குறைபாடு ஏற்பட்டால் வாய் துர்நாற்றம் அதிகரிக்கும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  3. தயிர் மற்றும் மோர் உடலில் உள்ள கெட்ட பாக்டீரியாக்களை அழித்து வாய் துர்நாற்றத்தில் இருந்து நிவாரணம் கொடுக்கும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  4. பால் ஒரு சிறந்த வாய்துர்நாற்றம் நிவாரணி. பூண்டு சாப்பிட்ட உடன் பால் அருந்தினால் வாயில் வரும் துர்நாற்றத்தில் இருந்து விடுபட முடியும் என்று ஆராய்ச்சி கூறுகிறது.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  5. ஆப்பிள் பழத்தில் உள்ள நார்ச்சத்து வாய் துர்நாற்றத்தில் இருந்து சிறந்த நிவாரணம் கொடுக்கும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),

                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "குறிப்பு: வலி இன்னும் நீடித்தால், நீங்கள் சென்று ஒரு மருத்துவரை சந்திக்க பரிந்துரைக்கிறோம்.",
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
        ));
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
