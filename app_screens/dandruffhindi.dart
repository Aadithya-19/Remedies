import 'package:flutter/material.dart';
import 'package:remedies/app_screens/indigestiontamil.dart';
import 'package:remedies/app_screens/splash_screen.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'TeluguSt.dart';
import 'StomachAche.dart';
import 'addremedie.dart';
import 'cough_hindi.dart';
import 'dandruff.dart';
import 'dandrufftamil.dart';
import 'dandrufftelugu.dart';
import 'english_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feedback.dart';
import 'remedies.dart';

class DandruffHindi extends StatefulWidget {
  DandruffHindi({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<DandruffHindi> {
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
              Text("रूसी का उपाय",
                  style: GoogleFonts.oswald(fontSize: 35.0, fontWeight: FontWeight.bold,)),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.0),

                  child: Text(
                      "डैंड्रफ एक सामान्य स्थिति है जिसके कारण सिर की त्वचा पर पपड़ी पड़ जाती है। यह संक्रामक या गंभीर नहीं है। लेकिन यह शर्मनाक और इलाज में मुश्किल हो सकता है।",
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

                  child: Text("  1. खुजली वाली खोपड़ी.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. आपकी खोपड़ी, बालों, भौंहों, दाढ़ी या मूंछों और कंधों पर त्वचा के गुच्छे।",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),

              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. बिना तेल के सूखे बाल",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. सिर में अत्यधिक गंदगी",
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

                  child: Text("  1. नींबू में विटामिन सी होता है जो आपके स्कैल्प और बालों के स्वास्थ्य के लिए आवश्यक है। यह खोपड़ी के पीएच को संतुलित करने और रूसी को कम करने में मदद कर सकता है।",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  2. अपने कई स्वास्थ्य लाभों के लिए प्रसिद्ध, नारियल के तेल का उपयोग अक्सर रूसी के लिए एक प्राकृतिक उपचार के रूप में भी किया जाता है। नारियल का तेल त्वचा के जलयोजन में सुधार करने और सूखापन को रोकने और रूसी को कम करने में मदद कर सकता है।",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  3. माना जाता है कि एलोवेरा त्वचा की स्थिति जैसे जलन, सोरायसिस और कोल्ड सोर का इलाज करता है और रूसी के उपचार में भी फायदेमंद होता है।",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  4. रूसी का इलाज करने के लिए घर पर घरेलू उपचार का पालन करना एक कठिन काम हो सकता है, खासकर दही इसे बहुत गन्दा कर देता है। दही को बालों में लगाने से डैंड्रफ का इलाज बहुत प्रभावी होता है। आपको बस इतना करना है कि अपने बालों में दही लगाएं और इसे लगभग एक घंटे तक सूखने दें, और फिर आप इसे हल्के शैम्पू से धो सकते हैं।",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.oswald(fontSize: 20.0))),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),

                  child: Text("  5. लहसुन में एंटीफंगल गुणों का एक अच्छा स्रोत होता है जिसमें कुछ खतरनाक रोगाणुओं को खत्म करने की प्रवृत्ति होती है जो रूसी पैदा करने के लिए जिम्मेदार होते हैं। लहसुन के रस में शहद मिलाएं और 15 मिनट के लिए अपने स्कैल्प पर लगाएं, एक बार जब यह सूख जाए तो माइल्ड शैम्पू से धो लें।",
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
                        "नोट: यदि दर्द अभी भी बना रहता है, तो हम अनुशंसा करते हैं कि आप डॉक्टर के पास जाएँ।",
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
