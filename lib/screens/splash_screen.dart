import 'package:flutter/material.dart';
import 'package:haggle_x/widgets/background_widget.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 70,
                  height: 70,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "HaggleX",
                  style: TextStyle(fontSize: 26, color: Colors.white),
                )
              ],
            )),
      ),
    );
  }
}
