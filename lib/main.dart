import 'package:flutter/material.dart';
import 'package:scribbleclone/screens/hone_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scribbl Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, canvasColor: Colors.white),
      home: const Homescreen(),
    );
  }
}
