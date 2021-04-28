import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String? labelText;

  TextFieldWidget({this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(color: Theme.of(context).primaryColor),
      decoration: InputDecoration(
        focusColor: Color.fromRGBO(160, 133, 225, 1),
        labelText: labelText,
        labelStyle:
            TextStyle(color: Theme.of(context).primaryColor, fontSize: 12, fontWeight: FontWeight.w100),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }
}
