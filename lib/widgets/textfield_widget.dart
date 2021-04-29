import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Widget? suffix;

  TextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.obscureText,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      obscureText: obscureText,
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
        suffix: suffix,
        focusColor: Color.fromRGBO(160, 133, 225, 1),
        labelText: labelText,
        labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 11,
            fontWeight: FontWeight.w100),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
