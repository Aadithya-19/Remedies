import 'package:flutter/material.dart';
import 'package:remedies/app_screens/TamilSt.dart';
import 'package:remedies/app_screens/TamilStAc.dart';
import 'package:remedies/app_screens/HindiStAc.dart';
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
import 'choose_screen.dart';
import 'cough_hindi.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'hindi_screen.dart';
import 'indigesioneng.dart';
import 'indigestionhindi.dart';
import 'remedies.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';

class IndigestionTelugu extends StatefulWidget {
  IndigestionTelugu({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<IndigestionTelugu> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndigestionTelugu()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndigestionEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndigestionHindi()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndigestionTamil()));
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
                          "Telugu",
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
                            "Tamil",
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
                Text("అజీర్ణ నివారణ",
                    style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "మీకు అజీర్ణం ఉన్నప్పుడు, భోజనం చేసేటప్పుడు లేదా భోజనం తిన్న తర్వాత అసౌకర్యంగా నిండినట్లు మీకు అనిపిస్తుంది. అజీర్ణం సాధారణం అయినప్పటికీ, ప్రతి వ్యక్తి అజీర్ణాన్ని కొద్దిగా భిన్నమైన రీతిలో అనుభవించవచ్చు.",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text(
                        "లక్షణాలు:",                    textAlign: TextAlign.left,
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. భోజన సమయంలో ప్రారంభ సంపూర్ణత్వం",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. భోజనం తర్వాత అసౌకర్య సంపూర్ణత్వం",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. భోజనం తర్వాత అసౌకర్య సంపూర్ణత్వం",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. పొత్తి కడుపులో కాలిపోతుంది.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  5. వికారం",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  6. పొత్తి కడుపులో ఉబ్బరం",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("పరిష్కారం: ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  1. అల్లం అజీర్ణానికి సరైన సహజ నివారణ ఎందుకంటే ఇది కడుపు ఆమ్లాన్ని తగ్గిస్తుంది. అదే విధంగా చాలా తక్కువ కడుపు ఆమ్లం అజీర్ణానికి కారణమవుతుంది, ఎక్కువ కడుపు ఆమ్లం అదే ప్రభావాన్ని కలిగి ఉంటుంది.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  2. అతిసారం మరియు జీర్ణక్రియ ఉన్నవారికి పెరుగు చాలా ప్రభావవంతమైన నివారణ. పెరుగు గిన్నెలో కొన్ని పిండిచేసిన జీలకర్ర మరియు ఉప్పు కలపండి మరియు రోజులో కనీసం రెండుసార్లు ఉంచండి.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  3. క్యారెట్లను పవర్ ఫుడ్ అని పిలుస్తారు మరియు కడుపు బాగుపడటానికి సహాయపడుతుంది. బ్లెండర్లో, కొన్ని క్యారెట్లు, ఒక అరటిపండు మరియు కొంచెం నీరు కలపండి.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  4. 1 గ్లాసు వెచ్చని నీటిలో 1 టీస్పూన్ నిమ్మరసం కలపండి. అప్పుడు 1 టీస్పూన్ తేనె జోడించండి. దీన్ని బాగా కలపండి మరియు ప్రతి భోజనం తర్వాత త్రాగాలి. తేనెతో నిమ్మకాయ మరియు వేడినీరు అజీర్ణానికి సమర్థవంతమైన ఇంటి నివారణలలో ఒకటి.",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.oswald(fontSize: 20.0))),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.0),

                    child: Text("  5. కొత్తిమీర విత్తనాలు శోథ నిరోధక లక్షణాలకు ప్రసిద్ది చెందాయి, ఇవి మిమ్మల్ని కలత, కడుపు లేదా అజీర్ణం నుండి ఉపశమనం చేస్తాయి. మీ జీర్ణ ప్రక్రియను మరింత ఉత్తేజపరుస్తుంది.",
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
                        "గమనిక: నొప్పి ఇంకా కొనసాగితే, మీరు వెళ్లి వైద్యుడిని చూడాలని మేము సిఫార్సు చేస్తున్నాము.",
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
