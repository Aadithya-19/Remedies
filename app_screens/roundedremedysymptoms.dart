import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'constants2.dart';
import 'package:flutter_quill/flutter_quill.dart';

class RoundedRSymptomsField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedRSymptomsField({
    Key key,
    this.hintText,
    this.icon = Icons.sanitizer_sharp,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuillController _controller = QuillController.basic();
    return Container(
      height:300,
      child:TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    ),
    );  }
}
