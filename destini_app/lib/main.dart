import 'package:destini_app/story_brain.dart';
import 'package:flutter/material.dart';
import 'destini_app.dart';
import 'package:destini_app/story_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DestiniApp(),
    );
  }
}
