import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task4/firsthome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Firsthome());
  }
}
