import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'constants2.dart';

class RoundedSolutionField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedSolutionField({
    Key key,
    this.hintText,
    this.icon = Icons.local_hospital_rounded,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: TextFieldContainer(
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
    );
  }
}
