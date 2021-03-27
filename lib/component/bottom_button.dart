import 'package:assignment_login_screen/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Color textColour;

  final Function onPressed;
  BottomButton({this.textColour, this.onPressed, Color buttonColour});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      minWidth: double.infinity,
      height: 45.0,
      color: kSecondaryBlue,
      onPressed: onPressed,
      child: Text(
        'Next',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
