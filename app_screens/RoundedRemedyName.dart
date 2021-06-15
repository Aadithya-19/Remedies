import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'constants2.dart';

class RoundedRemedyNameField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedRemedyNameField({
    Key key,
    this.hintText,
    this.icon = Icons.drive_file_rename_outline,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
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
    );
  }
}
