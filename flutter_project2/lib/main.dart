import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My new app"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Text("Hello world",
              style: GoogleFonts.robotoMono(
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.purple,
      ),
    ),
  ));
}
