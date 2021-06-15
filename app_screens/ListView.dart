import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_field_container.dart';
import 'constants2.dart';

class FinalListView extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const FinalListView({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),

              ),
            ]),
          ),
        ]);
  }
}
