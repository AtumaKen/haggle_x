import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final Widget? suffix;

  final Color? cursorColor;

  final Color? textColor;

  final Color? labelColor;

  final Color borderColor;

  TextFieldWidget(
      {Key? key,
      required this.labelText,
      required this.obscureText,
      required this.borderColor,
      this.cursorColor,
      this.textColor,
      this.labelColor,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor,
      obscureText: obscureText,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        suffix: suffix,
        // focusColor: Color.fromRGBO(160, 133, 225, 1),
        labelText: labelText,
        labelStyle: TextStyle(
            color: labelColor, fontSize: 12, ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
