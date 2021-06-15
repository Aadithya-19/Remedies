import 'package:flutter/material.dart';
import 'package:remedies/app_screens/StomachAche.dart';
import 'package:remedies/app_screens/cough_eng.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'TamilStAc.dart';
import 'HindiStAc.dart';
import 'TeluguStAc.dart';
import 'addremedie.dart';
import 'background.dart';
import 'choose_screen.dart';
import 'cough_tamil.dart';
import 'coughtelugu.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'hindi_screen.dart';
import 'remedies.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';

class CoughHindi extends StatefulWidget {
  CoughHindi({Key key}) : super(key: key);
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<CoughHindi> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughHindi()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughTamil()));
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
                            "Hindi",
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
                Text("खांसी का उपाय",
                    style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "खांसी बहुत परेशान करती है क्योंकि यह न केवल अनैच्छिक रूप से आती है, यह बोलते समय आपको बाधित भी कर सकती है। यह सामान्य और वायरल दोनों तरह का हो सकता है लेकिन चिंता न करें क्योंकि हम जो उपाय बताने जा रहे हैं, वे आपकी मदद करेंगे।",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "लक्षण:",                    textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. कफ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. गला बैठना",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. बार-बार गला साफ करना",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. घरघराहट और सांस की तकलीफ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),

                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("समाधान: ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. शहद की चाय: खांसी के इलाज के लिए शहद का उपयोग करने के लिए, 2 चम्मच (चम्मच) गर्म पानी या एक हर्बल चाय के साथ मिलाएं। इस मिश्रण को दिन में एक या दो बार पियें।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. नमक और पानी से गरारे करना: हालांकि यह उपाय अपेक्षाकृत सरल लग सकता है, नमक और पानी से गरारे करने से गले में खराश से राहत मिलती है जिससे आपको खांसी होती है। 8 औंस गर्म पानी में 1/4 से 1/2 चम्मच नमक मिलाकर पीने से जलन से राहत मिलती है।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. बलगम को ढीला करने के लिए ह्यूमिडिफायर का इस्तेमाल करें।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. नीलगिरी का तेल: इसे वेपोराइज़र में इस्तेमाल करें या बलगम को तोड़ने में मदद करने के लिए इसे अपनी छाती पर रगड़ें।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  5. हाइड्रेटेड रहें: बलगम को पतला करने के लिए ढेर सारा पानी पिएं।",
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
                        "नोट: यदि दर्द अभी भी बना रहता है, तो हम आपको डॉक्टर के पास जाने की सलाह देते हैं।",
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
                //     alignment: Ali4gnment.topLeft,
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
