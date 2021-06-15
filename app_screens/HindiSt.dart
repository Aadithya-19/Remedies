import 'package:flutter/material.dart';
import 'package:remedies/app_screens/TamilSt.dart';
import 'package:remedies/app_screens/TamilStAc.dart';
import 'package:remedies/app_screens/HindiStAc.dart';
import 'package:remedies/app_screens/sourthroat.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'TeluguSt.dart';
import 'HindiStAc.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'background.dart';
import 'choose_screen.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'hindi_screen.dart';
import 'remedies.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';

class HindiSourThroat extends StatefulWidget {
  HindiSourThroat({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<HindiSourThroat> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HindiSourThroat()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SourThroat()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TamilSourThroat()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeluguSourThroat()));
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
                Text("गले में खराश का उपाय",
                    style: GoogleFonts.oswald(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "गले में खराश एक वास्तविक दर्द है क्योंकि यह न केवल आपको दिन-प्रतिदिन की गतिविधियों से विचलित करता है और आपकी आवाज को अस्थिर करता है। लेकिन चिंता न करें क्योंकि रेमेडीज़+ को आपका गला मिल गया है और हमारे पास आपकी मदद करने के लिए अचूक उपाय हैं।",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("लक्षण:",
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
                        "  1. गले में दर्द या खरोंच महसूस होना",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  2. दर्द जो निगलने या बात करने से बढ़ जाता है",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  3. निगलने में कठिनाई",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  4. जलन की अनुभूति",
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
                        style: GoogleFonts.oswald(
                            fontSize: 25.0, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  1. शहद को चाय में मिलाकर या अकेले लिया जाए तो यह गले की खराश के लिए एक आम घरेलू उपाय है। एक अध्ययन में पाया गया है कि रात के समय होने वाली खांसी को नियंत्रित करने में शहद सामान्य कफ सप्रेसेंट्स की तुलना में अधिक प्रभावी था।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  2. गर्म नमक के पानी से गरारे करने से गले की खराश को शांत करने और स्राव को कम करने में मदद मिल सकती है। यह गले में बैक्टीरिया को मारने में मदद करने के लिए भी जाना जाता है। एक गिलास गर्म पानी में आधा चम्मच नमक मिलाकर खारे पानी का घोल बना लें।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  3. लहसुन में प्राकृतिक जीवाणुरोधी गुण भी होते हैं। इसमें एलिसिन होता है, जो एक ऑर्गोसल्फर यौगिक है जो संक्रमण से लड़ने की क्षमता के लिए जाना जाता है।  ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  4. नमक के पानी और शहद के समान, नींबू गले में खराश के लिए बहुत अच्छा है क्योंकि वे बलगम को तोड़ने और दर्द से राहत दिलाने में मदद कर सकते हैं। इसके अलावा, नींबू विटामिन सी से भरपूर होते हैं जो प्रतिरक्षा प्रणाली को बढ़ावा देने में मदद कर सकते हैं और इसे आपके संक्रमण से लड़ने के लिए अधिक शक्ति प्रदान कर सकते हैं।",
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
