import 'package:flutter/material.dart';
import 'package:remedies/app_screens/StomachAche.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'TamilStAc.dart';
import 'HindiStAc.dart';
import 'TeluguStAc.dart';
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

class HindiStAc extends StatefulWidget {
  HindiStAc({Key key}) : super(key: key);
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<HindiStAc> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HindiStAc()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RecipeOne()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TamilStAc()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TeluguStAc()));
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
                Text("पेट दर्द का उपाय",
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
                        "पेट दर्द वास्तव में हानिकारक हो सकता है और वास्तव में आपके दिमाग को आपके सभी कामों से विचलित कर सकता है। लेकिन चिंता न करें, क्योंकि हमारे पास एक संपूर्ण आयुर्वेदिक DIY दवा है जो इसे ठीक कर देगी।",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("लक्षण: ",
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
                    child: Text("  1. पेट दर्द या ऐंठन",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  2. पेट में सूजन, फैलाव या सूजन",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  3. अतिसार",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  4. गैस",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  5. अपच",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text("  6. उल्टी के साथ या बिना जी मिचलाना",
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
                        "  1. पेट दर्द से छुटकारा पाने का सबसे अच्छा तरीका है पानी पीना। भोजन और पेय पदार्थों से पोषक तत्वों को कुशलतापूर्वक पचाने और अवशोषित करने के लिए शरीर को पानी की आवश्यकता होती है।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  2. दालचीनी, जीरा, लौंग गैस, सूजन, ऐंठन, अपच को कम करने में मदद करेगी",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  3. केले में विटामिन बी6, पोटैशियम और फोलेट होता है। यह ढीले मल में बल्क जोड़कर भी मदद कर सकता है, जो दस्त को कम कर सकता है।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        "  4. नारियल पानी में पोटेशियम और मैग्नीशियम की उच्च मात्रा होती है। ये पोषक तत्व दर्द, मांसपेशियों में ऐंठन और ऐंठन को कम करने में मदद करते हैं।",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
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

  navigateToPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Remedies()));
  }
  navigateToPage6(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TraditionalRemedies()));
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
