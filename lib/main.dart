import 'package:flutter/material.dart';
import 'package:shyp/ongoing/screens/ongoing_loads.dart';
import 'package:shyp/values/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.shyp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OngoingLoads(),
    );
  }
}
