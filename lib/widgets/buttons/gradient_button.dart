import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function function;
  final String title;
  GradientButton({required this.function, required this.title});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          gradient: LinearGradient(
            colors: [
              theme.backgroundColor,
              Color.fromRGBO(106, 75, 188, 1)
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: theme.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
