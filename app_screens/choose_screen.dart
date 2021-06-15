import 'package:flutter/material.dart';
import 'hindi_screen.dart';
import 'tamil_screen.dart';
import 'telugu_screen.dart';
import 'english_screen.dart';

void main() => runApp(MaterialApp(
  title: "Tutorial",
  home: ChooseScreen(),
));

class ChooseScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ChooseScreen> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Remediez+'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Container(

          color: Colors.lightBlueAccent,
          padding: EdgeInsets.all(20.0),
          child:Center(
            child: Column(
            children:[
              SizedBox(
                height:50.0,
              ),
              SizedBox(
                height:10.0,
              ),
              Text("Choose your language", style: TextStyle(fontSize: 33.0),),
              SizedBox(
                height:100.0,
              ),
              DropdownButton(
                itemHeight: 50.0,
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("English", style: TextStyle(fontSize: 40.0),),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Hindi", style: TextStyle(fontSize: 40.0),),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("Tamil", style: TextStyle(fontSize: 40.0),),
                      value: 3
                  ),
                  DropdownMenuItem(
                      child: Text("Telugu", style: TextStyle(fontSize: 40.0),),
                      value: 4
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    print(value);
                  }
                  );
                  if (value == 1) {
                    navigateToSubPage(context);
                  }
                  if (value == 2) {
                    navigateToSubPage2(context);
                  }if (value == 3) {
                    navigateToSubPage3(context);
                  }if (value == 4) {
                    navigateToSubPage4(context);
                  }
                })]),
        )));
  }
  navigateToSubPage(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => EnglishScreen()));
  }
  navigateToSubPage2(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HindiScreen()));
  }
  navigateToSubPage3(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TamilScreen()));
  }
  navigateToSubPage4(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => TeluguScreen()));
  }
}