// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockWidget extends StatefulWidget {
  const ClockWidget({ Key? key }) : super(key: key);

  @override
  _ClockWidgetState createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  String _timeString = '';
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    final String formattedDateTime =
        DateFormat('kk:mm:ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
    });
  }
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
            children: [
              AppBar(
                toolbarHeight: 40,
                backgroundColor: Color.fromRGBO(120, 120, 120, 100),
                leading: Icon(Icons.list, color: Colors.black),
                title:  Text(
                  'Clock',
                  style: TextStyle(
                      fontFamily: 'JosefinSans', fontWeight: FontWeight.w300),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 10),
                    child: Column(
                      children: [
                        Text(
                          _timeString.toString(),
                          style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 55,
                              fontWeight: FontWeight.w600,
                              color: Colors.lightBlue[800]),
                        ),
                        Text(
                          'Doetinchem, Netherlands',
                          style: TextStyle(
                              fontFamily: 'JosefinSans',
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.lightBlueAccent),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 7,
                    child: ColoredBox(
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    child: Card(
                      color: Color.fromRGBO(0, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '12:34.56',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.lightBlue[800]),
                                ),
                                Text(
                                  'EST',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.lightBlueAccent),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'New York \nUnited States',
                                style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.lightBlueAccent),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    child: Card(
                      color: Color.fromRGBO(0, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '12:34.56',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.lightBlue[800]),
                                ),
                                Text(
                                  'EST',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.lightBlueAccent),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'New York \nUnited States',
                                style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.lightBlueAccent),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 40),
                    child: Card(
                      color: Color.fromRGBO(0, 0, 0, 0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '12:34.56',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.lightBlue[800]),
                                ),
                                Text(
                                  'EST',
                                  style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.lightBlueAccent),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'New York \nUnited States',
                                style: TextStyle(
                                    fontFamily: 'JosefinSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.lightBlueAccent),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }
}