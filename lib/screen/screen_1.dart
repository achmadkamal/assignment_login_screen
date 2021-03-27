import 'package:assignment_login_screen/component/bottom_button.dart';
import 'package:assignment_login_screen/component/progress_numb.dart';
import 'package:assignment_login_screen/constants.dart';
import 'package:assignment_login_screen/screen/screen_2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const String id = 'Screen 1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlue,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: kPrimaryBlue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Step :',
                    style: kTitleWhite,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ProgressNumber(
                          numb: '1',
                          backgroundColour: kGreyColour,
                          numbColor: Colors.black),
                      ProgressNumber(
                          numb: '2',
                          backgroundColour: kGreyColour,
                          numbColor: Colors.black),
                      ProgressNumber(
                          numb: '3',
                          backgroundColour: kGreyColour,
                          numbColor: Colors.black),
                      ProgressNumber(
                          numb: '4',
                          backgroundColour: kGreyColour,
                          numbColor: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
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
                    Form(
                      key: _formKey,
                      child: TextFormField(
                        validator: (value) {
                          Pattern pattern =
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                          RegExp regExp = RegExp(pattern);
                          return (!regExp.hasMatch(value))
                              ? 'Invalid Email Addresss'
                              : null;
                        },
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
                    ),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: BottomButton(
                          textColour: Colors.white,
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushNamed(context, Screen2.id);
                            }
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








//EdgeInsets.only(top: 20.0, bottom: 50.0, left: 20.0, right: 20.0),}