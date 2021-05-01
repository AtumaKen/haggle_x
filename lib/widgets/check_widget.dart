import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckWidget extends StatelessWidget {
  final Color iconColor;
  final Color? containerColor;
  CheckWidget({required this.iconColor, this.containerColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Icon(
        Icons.check_rounded, color: iconColor, size: 64,
      ),
      decoration: BoxDecoration(shape: BoxShape.circle, color: containerColor),
    );
  }
}
