import 'package:flutter/material.dart';
import 'package:remedies/app_screens/dandruff.dart';
import 'package:remedies/app_screens/dandruffhindi.dart';
import 'package:remedies/app_screens/indigestiontamil.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'TeluguSt.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'cough_hindi.dart';
import 'dandrufftamil.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feedback.dart';
import 'remedies.dart';

class DandruffTelugu extends StatefulWidget {
  DandruffTelugu({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<DandruffTelugu> {
  navigateToSubPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DandruffHindi()));
  }

  navigateToSubPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DandruffEng()));
  }

  navigateToSubPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DandruffTamil()));
  }

  navigateToSubPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DandruffTelugu()));
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
              Text("చుండ్రు నివారణ",
                  style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(20.0),

                  child: Text(
                      "చుండ్రు అనేది నెత్తిమీద చర్మం పొరలుగా మారడానికి కారణమయ్యే ఒక సాధారణ పరిస్థితి. ఇది అంటువ్యాధి లేదా తీవ్రమైనది కాదు. కానీ ఇబ్బందికరంగా మరియు చికిత్స చేయడం కష్టంగా ఉంటుంది.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20.0),

                  child: Text(
                      "లక్షణాలు:",                    textAlign: TextAlign.left,
                      style: GoogleFonts.oswald(fontSize: 25.0, fontWeight: FontWeight.bold,))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  1. దురద నెత్తిమీద.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. మీ నెత్తి, జుట్టు, కనుబొమ్మలు, గడ్డం లేదా మీసం మరియు భుజాలపై చర్మం రేకులు.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),

              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. నూనె లేకుండా పొడి జుట్టు",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. తలలో అధిక ధూళి",
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

                  child: Text("  1. నిమ్మకాయలో మీ చర్మం మరియు జుట్టు ఆరోగ్యానికి అవసరమైన విటమిన్ సి ఉంటుంది. ఇది నెత్తిమీద పిహెచ్‌ను సమతుల్యం చేయడంలో సహాయపడుతుంది మరియు చుండ్రును తగ్గించడంలో సహాయపడుతుంది.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. బహుళ ఆరోగ్య ప్రయోజనాలకు ప్రసిద్ది చెందిన కొబ్బరి నూనె తరచుగా చుండ్రుకు సహజ నివారణగా కూడా ఉపయోగించబడుతుంది. కొబ్బరి నూనె చర్మం ఆర్ద్రీకరణను మెరుగుపరచడానికి మరియు పొడిని నివారించడానికి మరియు చుండ్రును తగ్గించడానికి సహాయపడుతుంది.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. అలోవెరా కాలిన గాయాలు, సోరియాసిస్ మరియు జలుబు పుండ్లు వంటి చర్మ పరిస్థితులకు చికిత్స చేస్తుందని మరియు చుండ్రు చికిత్సలో కూడా ప్రయోజనకరంగా ఉంటుందని నమ్ముతారు.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. చుండ్రు చికిత్సకు ఇంట్లో ఇంటి నివారణను అనుసరించడం చాలా కష్టమైన పని, ముఖ్యంగా పెరుగు చాలా గజిబిజిగా చేస్తుంది. మీ జుట్టుకు వర్తించే పెరుగు చుండ్రు చికిత్సకు చాలా ప్రభావవంతంగా ఉంటుంది. మీరు చేయాల్సిందల్లా మీ జుట్టుకు పెరుగును వర్తింపజేయండి మరియు ఒక గంట పాటు ఆరనివ్వండి, ఆపై మీరు తేలికపాటి షాంపూతో శుభ్రం చేసుకోవచ్చు.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. వెల్లుల్లికి యాంటీ ఫంగల్ లక్షణాల మంచి మూలం ఉంది, ఇవి చుండ్రుకు కారణమయ్యే కొన్ని ప్రమాదకరమైన సూక్ష్మజీవులను తొలగించే ధోరణిని కలిగి ఉంటాయి. వెల్లుల్లి రసంతో తేనె కలపండి మరియు 15 నిమిషాలు మీ నెత్తిపై రాయండి, ఎండిన తర్వాత తేలికపాటి షాంపూతో కడగాలి.",
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
