import 'package:flutter/material.dart';
import 'package:haggle_x/widgets/background_widget.dart';
import 'package:haggle_x/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 40,),
              TextFieldWidget(labelText: "Email Address",),
              TextFieldWidget(labelText: "Password (Min. 8 characters)",),
              Text("Forgot Password?"),
              ElevatedButton(onPressed: () {}, child: Text("LOG IN"))
            ],
          ),
        ),
      ),
    );
  }
}
