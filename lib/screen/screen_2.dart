import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'Screen 2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Screen 2'),
      ),
    );
  }
}
