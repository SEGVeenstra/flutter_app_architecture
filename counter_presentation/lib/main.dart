import 'package:counter_presentation/features/counter/counter_page.dart';
import 'package:counter_presentation/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Architecture Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterPage(),
    );
  }
}
