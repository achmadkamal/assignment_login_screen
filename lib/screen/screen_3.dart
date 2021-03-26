import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  static const String id = 'Screen 3';

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Screen 3'),
      ),
    );
  }
}
