import 'package:flutter/material.dart';
import 'package:contador_flutter/screens/counter_screen.dart';
import 'package:contador_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(),
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
