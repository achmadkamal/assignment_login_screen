import 'package:assignment_login_screen/component/bottom_button.dart';
import 'package:assignment_login_screen/component/progress_numb.dart';
import 'package:assignment_login_screen/constants.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  static const String id = 'Screen 4';

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> with SingleTickerProviderStateMixin {
  AnimationController controller;
  DateTime pickedDate;
  TimeOfDay pickedTime;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    controller.forward();

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.addListener(() {
      setState(() {});
    });

    pickedDate = DateTime.now();
    pickedTime = TimeOfDay.now();
  }

  _pickedDate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
      initialDate: pickedDate,
    );

    if (date != null) {
      pickedDate = date;
    }
  }

  _pickedTime() async {
    TimeOfDay time = await showTimePicker (
      context: context,
      initialTime: pickedTime,
    );

    if (time != null) {
      pickedTime = time;
    }
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
                      backgroundColour: kSecondaryBlue,
                      numbColor: kGreyColour),
                  ProgressNumber(
                      numb: '4',
                      backgroundColour: kGreyColour,
                      numbColor: Colors.black),
                ],
              ),
              SizedBox(height: 30.0),
              Hero(
                tag: 'calender',
                child: CircleAvatar(
                  backgroundColor: kGreyColour.withOpacity(controller.value),
                  radius: 25.0,
                  child: CircleAvatar(
                    backgroundColor: kGreyColour,
                    radius: 20.0,
                    child: Icon(Icons.calendar_today_outlined),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Schedule Video Call',
                style: kTitleWhite,
              ),
              SizedBox(height: 10.0),
              Text(
                'Choose the date an time that you prefered. We will send a link via email to make video call on the schedule date and time',
                style: kSubTitleWhite,
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text('Choose Date'),
                  subtitle: Text(
                      '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}'),
                  trailing: GestureDetector(
                    child: Icon(Icons.arrow_drop_down_sharp),
                    onTap: () {
                      _pickedDate();
                    },
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                decoration: BoxDecoration(
                  color: kGreyColour,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text('Choose Time'),
                  subtitle: Text('${pickedTime.hour}:${pickedTime.minute}'),
                  trailing: GestureDetector(
                    child: Icon(Icons.arrow_drop_down_sharp),
                    onTap: () {
                      _pickedTime();
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
                    onPressed: () {},
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
