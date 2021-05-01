import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:haggle_x/utilities/string_utils.dart';
import 'package:haggle_x/widgets/background_widget.dart';
import 'package:haggle_x/widgets/buttons/back_button.dart';
import 'package:haggle_x/widgets/buttons/gradient_button.dart';
import 'package:haggle_x/widgets/check_widget.dart';
import 'package:haggle_x/widgets/curved_container.dart';
import 'package:haggle_x/widgets/textfield_widget.dart';

class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                child: BackButtonWidget(),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Verify your account",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              CurvedContainer(
                children: [
                  CheckWidget(
                    iconColor: Theme.of(context).backgroundColor,
                    containerColor: Color.fromRGBO(246, 243, 255, 1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringUtils.verificationText,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFieldWidget(
                      labelText: StringUtils.verificationLabel,
                      obscureText: false,
                      labelColor: Theme.of(context).colorScheme.onPrimary,
                      borderColor: Theme.of(context).colorScheme.onPrimary),
                  SizedBox(
                    height: 40,
                  ),
                  GradientButton(function: () {}, title: "VERIFY ME"),
                  SizedBox(
                    height: 40,
                  ),
                  Text(StringUtils.expiryText, style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend Code",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
