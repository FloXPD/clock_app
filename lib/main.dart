// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './timer_page.dart';
import './clock_page.dart';
import './stop_watch_page.dart';
import 'alarm_page.dart';

void main() {
  runApp(ClockApp());
}

class ClockApp extends StatefulWidget {
  const ClockApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ClockAppState();
  }
}

class _ClockAppState extends State<ClockApp> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ClockWidget(),
    TimerWidget(),
    StopWatchWidget(),
    AlarmWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(100, 100, 100, 100),
        body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontFamily: 'JosefinSans',
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.access_time,
                  color: Colors.lightBlueAccent,
                ),
                label: 'Clock',
                backgroundColor: Color.fromRGBO(120, 120, 120, 100)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.hourglass_empty,
                  color: Colors.lightBlueAccent,
                ),
                label: 'Timer',
                backgroundColor: Color.fromRGBO(120, 120, 120, 100)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.timer,
                  color: Colors.lightBlueAccent,
                ),
                label: 'Stopwatch',
                backgroundColor: Color.fromRGBO(120, 120, 120, 100)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.lightBlueAccent,
                ),
                label: 'Alarm',
                backgroundColor: Color.fromRGBO(120, 120, 120, 100)),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
