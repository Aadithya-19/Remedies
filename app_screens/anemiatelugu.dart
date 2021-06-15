import 'package:flutter/material.dart';
import 'package:remedies/app_screens/TamilSt.dart';
import 'package:remedies/app_screens/TamilStAc.dart';
import 'package:remedies/app_screens/HindiStAc.dart';
import 'package:remedies/app_screens/cough_tamil.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'HindiSt.dart';
import 'TeluguSt.dart';
import 'HindiStAc.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'anemiaeng.dart';
import 'anemiahindi.dart';
import 'anemiatamil.dart';
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

class AnemiaTelugu extends StatefulWidget {
  AnemiaTelugu({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<AnemiaTelugu> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaHindi()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaTamil()));
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
                        navigateToSubPage4(context);
                      }
                      if (value == 2) {
                        navigateToSubPage2(context);
                      }
                      if (value == 3) {
                        navigateToSubPage(context);
                      }
                      if (value == 4) {
                        navigateToSubPage3(context);
                      }
                    }),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("రక్తహీనత నివారణ",
                  style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                      "రక్తహీనత అనేది మీ శరీర కణజాలాలకు తగినంత ఆక్సిజన్‌ను తీసుకువెళ్ళడానికి మీకు తగినంత ఆరోగ్యకరమైన ఎర్ర రక్త కణాలు లేని పరిస్థితి. రక్తహీనత కలిగి ఉండటం వలన మీరు అలసట మరియు బలహీనంగా ఉంటారు.",
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

                  child: Text("  1. అలసట",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                    child: Text("  2. బలహీనత",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. ఛాతి నొప్పి",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. తలనొప్పి",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. తేలికపాటి తలనొప్పి",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  6. సక్రమంగా లేని హృదయ స్పందనలు",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20.0),

                  child: Text("పరిష్కారం: ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  1. మీ రక్తహీనతను నయం చేయడానికి మీరు పూర్తిగా విశ్వసించే కూరగాయ బీట్‌రూట్. ఈ కూరగాయ సహజమైన ఇనుముతో సమృద్ధిగా ఉన్నందున, ఇది రక్తంలో హిమోగ్లోబిన్ సంఖ్యను పెంచడానికి సహాయపడుతుంది. అందువల్ల, దీర్ఘకాలిక వినియోగంతో, రక్తంలో ఆక్సిజన్ స్థాయి క్రమంగా పెరుగుతుంది.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. విటమిన్ సి ని క్రమం తప్పకుండా తీసుకోవడం వల్ల తీవ్రమైన రక్తహీనతతో బాధపడుతున్న రోగుల పరిస్థితులు మెరుగుపడ్డాయని కనుగొనబడింది. నారింజ, తీపి సున్నం లేదా నిమ్మకాయ వంటి సిట్రస్ పండ్ల వినియోగం విటమిన్ సి యొక్క గొప్ప వనరులు, ఇది రక్తంలో ఎక్కువ మొత్తంలో ఇనుమును పీల్చుకోవడానికి సహాయపడుతుంది.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. బచ్చలికూర వంటి ఆకుకూరలు, విటమిన్ బి 12, ఫోలిక్ యాసిడ్ మరియు ఇతర ముఖ్యమైన పోషకాల యొక్క సహజ వనరు, మరియు మీరు దీన్ని మీ రోజువారీ పళ్ళెం లో భాగమైతే దాని అనుకూల ప్రభావాలను చూపిస్తుంది.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. ఎండుద్రాక్ష మరియు తేదీలు విటమిన్ సి మరియు ఇనుము యొక్క అద్భుతమైన మూలం. విటమిన్ సి రోగనిరోధక శక్తిని పెంచడానికి సహాయపడుతుంది, తద్వారా మీ శరీరం ఇనుమును మరింత సమర్థవంతంగా గ్రహించడానికి సహాయపడుతుంది. నానబెట్టిన అత్తి పండ్లను, మరియు తేదీలు మరియు ఎండుద్రాక్షలను వారానికి మూడుసార్లు ఉదయం తినడం వల్ల మీ హిమోగ్లోబిన్ స్థాయిలు మెరుగుపడతాయి.",
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
