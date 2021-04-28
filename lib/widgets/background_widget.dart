import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  BackgroundWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
            Color.fromRGBO(62, 42, 116, 1),
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor,
          ],
//              begin: Alignment.bottomLeft,
//              end: Alignment.centerRight,
          end: Alignment.topRight,
          begin: Alignment.centerLeft,

//              stops: [0.7, 0.9, 1.0]
        ),
      ),
      child: child,
    );
  }
}
