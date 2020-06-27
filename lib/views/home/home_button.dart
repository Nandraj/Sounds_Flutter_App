import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String buttonText;
  final Widget screenName;
  HomeButton(this.buttonText, this.screenName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) => screenName),
          );
        },
        elevation: 10.0,
        splashColor: Colors.blue,
        textColor: Colors.white,
        padding: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromRGBO(18, 194, 233, 0.7),
                Color.fromRGBO(119, 113, 237, 0.7),
                Color.fromRGBO(246, 79, 89, 0.7),
              ],
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.0),
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
