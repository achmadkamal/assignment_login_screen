import 'package:assignment_login_screen/component/bottom_button.dart';
import 'package:assignment_login_screen/component/progress_numb.dart';
import 'package:assignment_login_screen/constants.dart';
import 'package:assignment_login_screen/screen/personal_info.dart';
import 'package:assignment_login_screen/screen/screen_4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  static const String id = 'Screen 3';

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String selectedGoalActivation;
  String selectedMonthlyIncome;
  String selectedMonthlyExpense;

  List<DropdownMenuItem> getGoalActivation() {
    List<DropdownMenuItem<String>> dropdownItem = [];

    for (String goalActivation in goalForActivationList) {
      var newItem = DropdownMenuItem(
        child: Text(goalActivation),
        value: goalActivation,
      );
      dropdownItem.add(newItem);
    }
    return dropdownItem;
  }

  List<DropdownMenuItem> getMontlyIncome() {
    List<DropdownMenuItem<String>> dropdownItem = [];

    for (String monthlyIncome in monthlyIncomeList) {
      var newItem = DropdownMenuItem(
        child: Text(monthlyIncome),
        value: monthlyIncome,
      );
      dropdownItem.add(newItem);
    }
    return dropdownItem;
  }

  List<DropdownMenuItem> getMontlyExpense() {
    List<DropdownMenuItem<String>> dropdownItem = [];

    for (String monthlyExpense in monthlyExpenseList) {
      var newItem = DropdownMenuItem(
        child: Text(monthlyExpense),
        value: monthlyExpense,
      );
      dropdownItem.add(newItem);
    }
    return dropdownItem;
  }

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
                      backgroundColour: kSecondaryBlue,
                      numbColor: kGreyColour),
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
                'Personal Information',
                style: kTitleWhite,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Please fill in the information below and your goal for digital saving',
                style: kSubTitleWhite,
              ),
              SizedBox(height: 30.0),
              Container(
                height: 55.0,
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Choose your goal activation'),
                    value: selectedGoalActivation,
                    items: getGoalActivation(),
                    onChanged: (value) {
                      setState(() {
                        selectedGoalActivation = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 55.0,
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Choose your monthly income'),
                    value: selectedMonthlyIncome,
                    items: getMontlyIncome(),
                    onChanged: (value) {
                      setState(() {
                        selectedMonthlyIncome = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 55.0,
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Choose your monthly expense'),
                    value: selectedMonthlyExpense,
                    items: getMontlyExpense(),
                    onChanged: (value) {
                      setState(() {
                        selectedMonthlyExpense = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: BottomButton(
                    textColour: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, Screen4.id);
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
