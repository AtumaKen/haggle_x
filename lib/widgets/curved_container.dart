import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  final List<Widget> children;

  CurvedContainer({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:34.0),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
