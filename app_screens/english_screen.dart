import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remedies/app_screens/feedback.dart';
import 'package:remedies/app_screens/indigesioneng.dart';
import 'package:remedies/app_screens/sourthroat.dart';
import 'package:remedies/app_screens/traditionalremedies.dart';
import 'addremedie.dart';
import 'StomachAche.dart';
import 'anemiaeng.dart';
import 'cough_eng.dart';
import 'remedies.dart';
import 'splash_screen.dart';

class EnglishScreen extends StatefulWidget {
  EnglishScreen({Key key}) : super(key: key);
  @override
  _SearchListState createState() => new _SearchListState();
}

class _SearchListState extends State<EnglishScreen> {
  var taskcollections = FirebaseFirestore.instance.collection('recommendedremedies').doc("MXkd1WiYjSyNGXdxApZJ").get();
  var name;

  String remedyname;
  String remedysdesp;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    addRecommendedData() async {
      // data = taskcollections;
      // print("************** " + taskcollections.toString());
      // print(data);
      DocumentSnapshot ds = await FirebaseFirestore.instance.collection('recommendedremedies').doc("MXkd1WiYjSyNGXdxApZJ").get();
      name = ds.data();
      print(name['remedy_name']);
    }
    return new Scaffold(

        drawer: SideDrawer(),
        appBar: buildBar(context),
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/3951646.jpg'),
                        fit: BoxFit.cover)
                ),
                child: SingleChildScrollView(
                  child: Center(
                      child: Column(children: [
                        SizedBox(
                          height: 100.0,
                        ),

                        Text(
                          "Recommended remedies",
                          style: TextStyle(fontWeight: FontWeight.bold, color:Colors.white,fontSize:30.0),
                        ),

                        SizedBox(
                          height: 50.0,
                        ),

                        Container(

                          width: 500.0,
                          child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () =>
                                      {navigateToPage(context)},
                                      child: Text('Stomach Ache',
                                          style: GoogleFonts.oswald(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () =>
                                      {navigateToPage2(context)},
                                      child: Text('Sore Throat',
                                          style: GoogleFonts.oswald(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () =>
                                      {navigateToPage3(context)},
                                      child: Text('Cough',
                                          style: GoogleFonts.oswald(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () =>
                                      {navigateToPage4(context)},
                                      child: Text('Indigestion',
                                          style: GoogleFonts.oswald(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    height: 50.0,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.purple,
                                        width: 2,
                                      ),
                                      borderRadius:
                                      BorderRadius.circular(12),
                                    ),
                                    child: RaisedButton(
                                      color: Colors.white,
                                      onPressed: () =>
                                      {
                                        navigateToPage5(context),
                                        addRecommendedData(),
                                      },
                                      child: Text('Anemia',
                                          style: GoogleFonts.oswald(
                                              color: Colors.black,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w700)),
                                    ),
                                  ),
                                ),
                              ]),
                          //   ListView.separated(
                          //     padding: const EdgeInsets.all(16.0),
                          //     itemCount: 1,
                          //     itemBuilder: (context, index) {
                          //       return _buildArticleItem(index);
                          //     },
                          //     separatorBuilder: (context, index) =>
                          //     const SizedBox(height: 16.0),
                          //   ),
                          // )
                        )],
                      )),
                ))));
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
  navigateToPage2(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SourThroat()));
  }
  navigateToPage3(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CoughEng()));
  }
  navigateToPage4(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndigestionEng()));
  }

  navigateToPage5(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AnemiaEng()));
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
