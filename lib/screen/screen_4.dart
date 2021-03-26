import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  static const String id = 'Screen 4';

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Screen 4'),
      ),
    );
  }
}
