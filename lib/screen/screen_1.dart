import 'package:assignment_login_screen/component/bottom_button.dart';
import 'package:assignment_login_screen/constants.dart';
import 'package:assignment_login_screen/screen/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'Screen 1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            color: kPrimaryBlue,
          ),
          Expanded(
            child: Container(
              color: kPrimaryBlue,
              child: Container(
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Welcome to \nGIN ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                          TextSpan(
                            text: 'Finans',
                            style: TextStyle(
                              color: kPrimaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Welcome to the Bank of The Future. Manage your accounts on the go.',
                      style: kTitleBlack,
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: BottomButton(
                          textColour: Colors.white,
                          buttonColour: kPrimaryBlue,
                          onPressed: () {
                            Navigator.pushNamed(context, Screen2.id);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Color(0xff4d7feb),