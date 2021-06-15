import 'package:flutter/material.dart';
import 'package:remedies/app_screens/StomachAche.dart';
import 'package:remedies/app_screens/cough_eng.dart';
import 'package:remedies/app_screens/cough_hindi.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'HindiStAc.dart';
import 'HindiStAc.dart';
import 'TeluguStAc.dart';
import 'addremedie.dart';
import 'background.dart';
import 'choose_screen.dart';
import 'coughtelugu.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'remedies.dart';

class CoughTamil extends StatefulWidget {
  CoughTamil({Key key}) : super(key: key);
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<CoughTamil> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughTamil()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughHindi()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughTelugu()));
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
                Text("இருமல் தீர்வு",
                    style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "இருமல் மிகவும் எரிச்சலை ஏற்படுத்தும் வியாதி, ஏனெனில் பேசும் போது உங்களுக்கு இடையூறு விளைவிக்கும். இது இயல்பானதாகவும் வைரலாகவும் இருக்கலாம், ஆனால் கவலைப்பட வேண்டாம், ஏனென்றால் நாங்கள் கொடுக்கப் போகும் தீர்வுகள் உங்களுக்கு உதவும்.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "அறிகுறிகள்:",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. கபம்",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. குரல் தடை",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. தொண்டை அரிப்பு",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. மூச்சுத்திணறல்",
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
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. தேன் கலந்த தேநீர்: இருமலில் இருந்து விடுபட தேன் ஒரு சிறந்த நிவாரணி. 2 டீஸ்பூன் அல்லது தேக்கரண்டி தேனுடன் வெதுவெதுப்பான நீர் அல்லது தேநீர் கலந்து ஒரு நாளைக்கு இரண்டு முறை குடிக்கவும். இது இருமலில் இருந்து நிரந்தர தீர்வு கொடுக்க உதவும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. உப்பு நீர் கொப்பளித்தல்: இது மிகவும் எளிமையானதாக தோன்றினாலும் இது உங்களுக்கு இருமலில் இருந்து நல்ல நிவாரணம் கொடுக்கும். கல் உப்புடன் மிதமான சுடுநீர் கலந்து ஒரு நாளைக்கு மூன்று முறை கொப்பளித்தால்,  தொண்டையில் உள்ள பாக்டீரியாக்களை அழித்து தொண்டைக்கு இதமளிக்கும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. நீராவி பிடித்தல் இருமலுக்கு ஒரு சிறந்த நிவாரணம் கொடுக்கும். சூடான நீராவி சளியை குறைப்பதுடன் இருமலை குறைக்கவும் உதவும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. யூகலிப்டஸ் எண்ணெய்: சுத்தமான யூகலிப்டஸ் ஆயிலை சூடான நீருடன் கலந்து ஆவி பிடிக்க வேண்டும் அல்லது யூகலிப்டஸ் ஆயிலை நேரடியாக நெஞ்சுப்பகுதியில் தேய்த்து விட வேண்டும். இதனால் சளி இருமல் விரைவில் சரியாகும்.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  5. உடலுக்குத் தேவையான நீர்ச் சத்து: சளி இருமல் இருக்கும் பொழுது பசி ஏற்படாது. இருந்தபோதும் தண்ணீர், நீராகாரங்கள் மற்றும் உணவுகளில் கவனம் தேவை. இதனால் உடலுக்கு தேவையான சத்துக்கள் குறைவின்றிக் கிடைக்கும்",
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
        context, MaterialPageRoute(builder: (context) => HindiStAc()));
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
