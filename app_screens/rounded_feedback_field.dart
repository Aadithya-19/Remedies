import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'constants2.dart';

class RoundedFeedbackField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedFeedbackField({
    Key key,
    this.hintText,
    this.icon = Icons.feedback_outlined,
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
