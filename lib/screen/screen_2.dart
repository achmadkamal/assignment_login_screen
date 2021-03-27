import 'package:assignment_login_screen/component/bottom_button.dart';
import 'package:assignment_login_screen/component/progress_numb.dart';
import 'package:assignment_login_screen/constants.dart';
import 'package:assignment_login_screen/screen/screen_3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'Screen 2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool _passwordVisible = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBlue,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: kPrimaryBlue,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: kGreyColour,
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Text('Create Account', style: kTitleWhite),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ProgressNumber(
                      numb: '1',
                      backgroundColour: kSecondaryBlue,
                      numbColor: kGreyColour),
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
              SizedBox(height: 30.0),
              Text(
                'Create Password',
                style: kTitleWhite,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Password will be used to login to account',
                style: kSubTitleWhite,
              ),
              SizedBox(
                height: 30.0,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: (value) {
                    Pattern pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])';
                    RegExp regExp = RegExp(pattern);
                    return (!regExp.hasMatch(value))
                        ? 'Invalid Password'
                        : null;
                  },
                  obscureText: _passwordVisible,
                  decoration: InputDecoration(
                    fillColor: kGreyColour,
                    filled: true,
                    hintText: 'Password',
                    suffixIcon: IconButton(
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        }),
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
              SizedBox(height: 20.0),
              Text(
                'Complexity :',
                style: kSubTitleWhite,
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'a',
                        style: TextStyle(fontSize: 25.0, color: kGreyColour),
                      ),
                      Text(
                        'Lowercase',
                        style: kTextComplexity,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'A',
                        style: TextStyle(fontSize: 25.0, color: kGreyColour),
                      ),
                      Text(
                        'Upperrcase',
                        style: kTextComplexity,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '123',
                        style: TextStyle(fontSize: 25.0, color: kGreyColour),
                      ),
                      Text(
                        'Number',
                        style: kTextComplexity,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '9+',
                        style: TextStyle(fontSize: 25.0, color: kGreyColour),
                      ),
                      Text(
                        'Characters',
                        style: kTextComplexity,
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: BottomButton(
                    textColour: Colors.white,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pushNamed(context, Screen3.id);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
