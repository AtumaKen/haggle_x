import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final Function function;
  final String text;
  YellowButton({required this.function, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromRGBO(62, 6, 6, 1),
            fontWeight: FontWeight.w600
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).accentColor),
      ),
    );
  }
}
