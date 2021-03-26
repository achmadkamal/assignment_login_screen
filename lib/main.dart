import 'package:assignment_login_screen/screen/screen_1.dart';
import 'package:assignment_login_screen/screen/screen_2.dart';
import 'package:assignment_login_screen/screen/screen_3.dart';
import 'package:assignment_login_screen/screen/screen_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Screen1.id,
      routes: {
        Screen1.id: (context) => Screen1(),
        Screen2.id: (context) => Screen2(),
        Screen3.id: (context) => Screen3(),
        Screen4.id: (context) => Screen4(),
      },
    );
  }
}
