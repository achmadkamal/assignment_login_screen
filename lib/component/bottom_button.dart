import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Color textColour;
  final Color buttonColour;
  final Function onPressed;
  BottomButton({this.buttonColour, this.textColour, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      minWidth: double.infinity,
      height: 45.0,
      color: Color(0xff4d7feb),
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
