
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.teal,
      ),
      home: const DiceGame(),
    );
  }
}

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int LeftDicenumber =3;
  int RightDicenumber = 1;
  void setDiceNumber(){
    setState(() {
      RightDicenumber=Random().nextInt(5)+1;
      LeftDicenumber=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Roll the dice"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child:
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextButton(
                    onPressed: (){
                      setDiceNumber();
                    },
                    child:Image.asset("images/dice$RightDicenumber.png") ,
                  ),
                )
                ),
                Expanded(child:
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){
                     setDiceNumber();
                    },
                    child: Image.asset("images/dice$LeftDicenumber.png"),
                  )
                )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




