import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless and stateful classes"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Welcome to the app", style: TextStyle(fontSize: 25),),
              SizedBox(height: 50),
              Buttons()
            ],
          ),
        ),
      ),
    );
  }
}


class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter=0;
  var femaleCounter=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("no of females $femaleCounter", style: TextStyle(fontSize: 20),),
          Text("no of males $maleCounter",style: TextStyle(fontSize: 20),),
          SizedBox(height: 30),
          MaterialButton(onPressed:(){
            setState(() {
              maleCounter++;
            });
          },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 20,
            child: Text("Male+",
              style: (TextStyle(color: Colors.white,fontSize: 30)),
            ) ,
          ),
          SizedBox(height: 30),
          MaterialButton(onPressed:(){
            setState(() {
              femaleCounter++;
            });
          },
            height: 50,
            minWidth: 200,
            color: Colors.blue,
            elevation: 20,
            child: Text("Female+",
              style: (TextStyle(color: Colors.white,fontSize: 30)),
            ) ,
          )
        ],
      ),
    );
  }
}















































































































