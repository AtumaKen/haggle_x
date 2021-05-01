import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  final Color iconColor;
  final Color? containerColor;
  final List<Color>? gradientColor;

  CheckWidget(
      {required this.iconColor, this.containerColor, this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Icon(
        Icons.check_rounded,
        color: iconColor,
        size: 64,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: containerColor,
          gradient:  LinearGradient(
              colors: gradientColor == null  ? [containerColor!, containerColor!] : [gradientColor![0], gradientColor![1]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
    );
  }
}
