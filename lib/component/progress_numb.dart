import 'package:flutter/material.dart';

class ProgressNumber extends StatelessWidget {
  final Color backgroundColour;
  final Color numbColor;
  final String numb;
  ProgressNumber({this.backgroundColour, this.numbColor, this.numb});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColour,
      radius: 23.0,
      child: Text(
        numb,
        style: TextStyle(
          fontSize: 20.0,
          color: numbColor),
      ),
    );
  }
}
