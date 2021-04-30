import 'package:flutter/material.dart';
import 'package:haggle_x/utilities/string_utils.dart';
import 'package:haggle_x/widgets/back_button.dart';
import 'package:haggle_x/widgets/background_widget.dart';
import 'package:haggle_x/widgets/curved_container.dart';
import 'package:haggle_x/widgets/textfield_widget.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                ),
                Align(
                  child: BackButtonWidget(),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 20,
                ),
                CurvedContainer(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Create a new account",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    TextFieldWidget(
                      cursorColor: theme.colorScheme.onPrimary,
                      borderColor: theme.colorScheme.onPrimary,
                      labelColor: theme.colorScheme.onPrimary,
                      textColor: theme.colorScheme.onPrimary,
                      labelText: StringUtils.emailLabel,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      cursorColor: theme.colorScheme.onPrimary,
                      borderColor: theme.colorScheme.onPrimary,
                      labelColor: theme.colorScheme.onPrimary,
                      textColor: theme.colorScheme.onPrimary,
                      labelText: StringUtils.passwordLabel,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      cursorColor: theme.colorScheme.onPrimary,
                      borderColor: theme.colorScheme.onPrimary,
                      labelColor: theme.colorScheme.onPrimary,
                      textColor: theme.colorScheme.onPrimary,
                      labelText: StringUtils.userNameLabel,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      cursorColor: theme.colorScheme.onPrimary,
                      borderColor: theme.colorScheme.onPrimary,
                      labelColor: theme.colorScheme.onPrimary,
                      textColor: theme.colorScheme.onPrimary,
                      labelText: StringUtils.phoneNumberLabel,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      cursorColor: theme.colorScheme.onPrimary,
                      borderColor: theme.colorScheme.onPrimary,
                      labelColor: theme.colorScheme.onPrimary,
                      textColor: theme.colorScheme.onPrimary,
                      labelText: StringUtils.referralCodeLabel,
                      obscureText: false,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "By Signing in, you agree to the HaggleX privacy policy",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
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
                            "SIGN UP",
                            style: TextStyle(
                              color: theme.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
