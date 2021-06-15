import 'package:flutter/material.dart';
import 'package:remedies/app_screens/TamilSt.dart';
import 'package:remedies/app_screens/TamilStAc.dart';
import 'package:remedies/app_screens/HindiStAc.dart';
import 'package:remedies/app_screens/anemiahindi.dart';
import 'package:remedies/app_screens/cough_tamil.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'HindiSt.dart';
import 'TeluguSt.dart';
import 'HindiStAc.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'anemiaeng.dart';
import 'anemiatelugu.dart';
import 'background.dart';
import 'choose_screen.dart';
import 'cough_hindi.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'hindi_screen.dart';
import 'remedies.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';

class AnemiaTamil extends StatefulWidget {
  AnemiaTamil({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<AnemiaTamil> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaTamil()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaHindi()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaTelugu()));
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
              Text("ரத்த சோகைக்கான தீர்வு",
                  style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                      "அனிமியா அல்லது ரத்தசோகை, ரத்தத்தில் உள்ள ஆக்சிஜன் அளவு குறைபாட்டினால் வருகிறது. ரத்தசோகை உங்களையும் மிகவும் பலவீனமாக ஆகிவிடும்.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                      "அறிகுறிகள்:",                    textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),

              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15.0),

                  child: Text("  1. மயக்க உணர்வு",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. பலவீனம் ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. இதயத்தில் வலி ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. தலைவலி",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. தலைசுற்றல்",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  6. ஒழுங்கற்ற இதய துடிப்பு",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("தீர்வுகள்: ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  1. ரத்த சோகைக்கு ஒரு சிறந்த மருந்து பீட்ரூட். பீட்ரூட்டில் உள்ள இரும்புச்சத்து ரத்தத்தில் உள்ள ஹீமோகுளோபின் அளவை அதிகப்படுத்தும். இதனால் ரத்தத்தில் உள்ள ஆக்ஸிஜன் அளவு அதிகரிக்கும்.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. விட்டமின் சி உணவில் அதிகப்படுத்திக் கொண்டால் ரத்த சோகை முழுமையாக குணமடையும். பழங்கள் ஆரஞ்சு, எலுமிச்சை, சாத்துக்குடி இவைகளில் அதிகமான அளவு சிட்ரஸ் அல்லது வைட்டமின் சி சத்து உள்ளது. இதை அதிகமாக உட்கொண்டால் ரத்த சோகையில் இருந்து முழுமையாக நிவாரணம் கிடைக்கும்.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. பச்சைக் கீரைகளில் (அதாவது பசலைக் கீரை) அதிகமான அளவு விட்டமின் பி 12, போலிக் ஆசிட் மற்றும் மற்ற நியூட்ரிஷியன் கள் உள்ளன. இதை  தினசரி உணவில் எடுத்துக் கொண்டால் ரத்த சோகையில் இருந்து விரைவான நிவாரணம் கிடைக்கும்..",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. உலர்ந்த திராட்சை மற்றும் பேரீச்சம் பழங்கள் வைட்டமின் சி மற்றும் இரும்பு சத்து கொண்டுள்ள சிறந்த உணவாக திகழ்கிறது. வைட்டமின் சி நம்முடைய உடம்பில் எதிர்ப்பு சக்தியை அதிகரித்து, தேவையான அளவு இரும்பு சத்தை கிரகித்துக் கொள்ள உதவுகிறது. கைப்பிடி அளவு ஊறவைத்த அத்தி, பேரிச்சம் பழம் மற்றும் காய்ந்த திராட்சையை வாரத்திற்கு மூன்று முறை காலையில் எடுத்துக் கொள்வது நம்முடைய ஹீமோகுளோபின் அளவை அதிகரிக்க உதவுகிறது.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),

              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                      "குறிப்பு: இவை அனைத்தும் செய்த பிறகும் வலி இருக்குமானால் ஒரு சிறந்த மருத்துவரை அணுகுவது சிறந்தது.",
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
