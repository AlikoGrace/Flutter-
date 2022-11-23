import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("images/my_profle.jpg"),


              ),
            Text("Grace Aliko", style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),

            Text("Flutter developer", style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.teal[100],
              letterSpacing: 2.5,
            ),),

            SizedBox(height: 20.0,
            width: 150,
            child:Divider(
              color: Colors.teal.shade100,
              thickness:3,

            ),),

            Card(

              margin:EdgeInsets.symmetric(horizontal: 10, vertical: 25) ,
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("05583446234"),

              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10, ),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("gracealiko08@gmail.com"),

              ),
            )

          ],
        ),
      ),

    );
  }
}


