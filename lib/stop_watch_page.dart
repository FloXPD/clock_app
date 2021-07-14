// // ignore_for_file: prefer_const_constructors, unnecessary_null_comparison

// import 'dart:async';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class StopWatchWidget extends StatefulWidget {
//   const StopWatchWidget({Key? key}) : super(key: key);

//   @override
//   _StopWatchWidgetState createState() => _StopWatchWidgetState();
// }

// Stream<int> stopWatchStream() {
//   StreamController<int> streamController;
//   Timer timer;
//   Duration timerInterval = Duration(seconds: 1);
//   int counter = 0;

//   timer;

//   void stopTimer() {
//     if (timer != null) {
//       timer.cancel();
//       timer = null;
//       counter = 0;
//       streamController.close();
//     }
//   }

//   void tick(_) {
//     counter++;
//     streamController.add(counter);
//   }

//   void startTimer() {
//     timer = Timer.periodic(timerInterval, tick);
//   }

//   streamController = StreamController<int>(
//     onListen: startTimer,
//     onCancel: stopTimer,
//     onResume: startTimer,
//     onPause: stopTimer,
//   );

//   return streamController.stream;
// }

// var hoursStr;
// var minutesStr;
// var secondsStr;

// class _StopWatchWidgetState extends State<StopWatchWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 40,
//         backgroundColor: Color.fromRGBO(120, 120, 120, 100),
//         leading: Icon(Icons.list, color: Colors.black),
//         title: Text(
//           'Stopwatch',
//           style:
//               TextStyle(fontFamily: 'JosefinSans', fontWeight: FontWeight.w300),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               '$hoursStr:$minutesStr:$secondsStr',
//               style: TextStyle(
//                   fontFamily: 'JosefinSans',
//                   fontSize: 70,
//                   fontWeight: FontWeight.w300,
//                   color: Colors.lightBlue),
//             ),
//             SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 RaisedButton(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                   onPressed: () {
//                     timerStream = stopWatchStream();
//                     timerSubscription = timerStream.listen((int newTick) {
//                       setState(() {
//                         hoursStr = ((newTick / (60 * 60)) % 60)
//                             .floor()
//                             .toString()
//                             .padLeft(2, '0');
//                         minutesStr = ((newTick / 60) % 60)
//                             .floor()
//                             .toString()
//                             .padLeft(2, '0');
//                         secondsStr =
//                             (newTick % 60).floor().toString().padLeft(2, '0');
//                       });
//                     });
//                   },
//                   color: Colors.green,
//                   child: Text(
//                     'START',
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 RaisedButton(
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//                   onPressed: () {
//                     timerSubscribtion.cancel();
//                     timerStream = null;
//                     setState(() {
//                       hoursStr = '00';
//                       minutesStr = '00';
//                       secondsStr = '00';
//                     });
//                   },
//                   color: Colors.red,
//                   child: Text(
//                     'RESET',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
