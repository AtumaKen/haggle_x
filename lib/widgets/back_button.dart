import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.only(left: 8),
        height: 36,
        width: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(97, 78, 147, 1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => Navigator.of(context).pop()),
      ),
    );
  }
}
