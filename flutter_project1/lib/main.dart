import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: Center(
        child: Container(
          width: 360,
          color: Colors.red[700],
          child: Text(
            "Hello world",
            style: TextStyle(fontSize: 60, color: Colors.white),
          ),
        ),
      ),
    ),
  ));
}
