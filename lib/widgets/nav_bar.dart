import 'package:flutter/material.dart';

class MyAppBar {
  static getAppBar(BuildContext context) {
    return AppBar(
      leading: BackButton(
        onPressed: () {
          Navigator.pop(context);
        },
        color: Colors.black,
      ),
      title: Center(
        child: Text(
          "Sounds",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
