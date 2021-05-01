import 'package:flutter/material.dart';
import 'package:haggle_x/utilities/string_utils.dart';
import 'package:haggle_x/widgets/background_widget.dart';
import 'package:haggle_x/widgets/buttons/yellow_button.dart';
import 'package:haggle_x/widgets/check_widget.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckWidget(
                iconColor: (Theme.of(context).backgroundColor),
                gradientColor: [Colors.white, Color.fromRGBO(255, 193, 117, 1)],
              ),
              Text(
                "Setup Complete",
                style: TextStyle(
                    fontSize: 17,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                StringUtils.thankYouText,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              YellowButton(function: () {}, text: "START EXPLORING"),
            ],
          ),
        ),
      ),
    );
  }
}
