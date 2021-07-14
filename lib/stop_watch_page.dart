// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StopWatchWidget extends StatefulWidget {
  const StopWatchWidget({Key? key}) : super(key: key);

  @override
  _StopWatchWidgetState createState() => _StopWatchWidgetState();
}

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');

  return "$hours:$minutes:$seconds";
}

class _StopWatchWidgetState extends State<StopWatchWidget> {
  late Stopwatch _stopwatch;
  late Timer _timer;
  bool isResetVisible = false;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
    setState(() {});
  }

  void handleReset() {
    _stopwatch.reset();
    _stopwatch.stop();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(100, 100, 100, 0),
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Color.fromRGBO(120, 120, 120, 100),
        leading: Icon(Icons.list, color: Colors.black),
        title: Text(
          'Stopwatch',
          style:
              TextStyle(fontFamily: 'JosefinSans', fontWeight: FontWeight.w300),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(formatTime(_stopwatch.elapsedMilliseconds),
                      style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 55,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightBlue[800])),
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: handleStartStop,
                  child: Text(_stopwatch.isRunning ? 'Stop' : 'Start')),
              ElevatedButton(onPressed: handleReset, child: Text('Reset')),
            ],
          )
        ],
      )),
    );
  }
}
