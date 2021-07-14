// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  TimerWidgetState createState() => TimerWidgetState();
}

class TimerWidgetState extends State<TimerWidget> {
  var value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
            toolbarHeight: 40,
            backgroundColor: Color.fromRGBO(120, 120, 120, 100),
            leading: Icon(Icons.list, color: Colors.black),
            title: Text(
              'Timer',
              style: TextStyle(
                  fontFamily: 'JosefinSans', fontWeight: FontWeight.w300),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CupertinoTimerPicker(onTimerDurationChanged: (value) {}),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: null,
                child: Text(
                  'Start',
                  style: TextStyle(
                    color: Colors.lightBlue
                  ),
                  )
              )],
          )
        ],
      ),
    );
  }
}
