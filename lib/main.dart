import 'package:flutter/material.dart';
import 'package:pomodoro/pomoscreen.dart';
import 'package:pomodoro/timerservice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<timerservice>(
    create: (context) => timerservice(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: pomoscreen(),
    );
  }
}
