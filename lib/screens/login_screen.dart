import 'package:flutter/material.dart';
import 'package:haggle_x/utilities/string_utils.dart';
import 'package:haggle_x/widgets/background_widget.dart';
import 'package:haggle_x/widgets/buttons/yellow_button.dart';
import 'package:haggle_x/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureState = true;

  _changeObscureState() {
    if (mounted)
      setState(() {
        _obscureState = !_obscureState;
      });
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //todo: add validation to textfields
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0),
          child: ListView(
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 40,
              ),
              TextFieldWidget(
                labelText: StringUtils.emailLabel,
                cursorColor: theme.primaryColor,
                borderColor: theme.primaryColor,
                labelColor: theme.primaryColor,
                textColor: theme.primaryColor,
                obscureText: false,
              ),
              SizedBox(
                height: 17,
              ),
              TextFieldWidget(
                obscureText: _obscureState,

                suffix: GestureDetector(
                  child: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: _changeObscureState,
                ),
                cursorColor: theme.primaryColor,
                borderColor: theme.primaryColor,
                labelColor: theme.primaryColor,
                textColor: theme.primaryColor,
                labelText: StringUtils.passwordLabel,
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 11, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 30,
              ),
              YellowButton(function: (){}, text: "LOG IN"),
              SizedBox(
                height: 20,
              ),
               TextButton(
                child: Text(
                  "New user?Create a new account",
                  style: TextStyle(
                      fontSize: 11, color: Theme.of(context).primaryColor, fontWeight: FontWeight.w300),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
