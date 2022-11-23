import 'package:flutter/material.dart';
import 'package:food_monkey/screens/landing_screen.dart';
import 'package:food_monkey/screens/splash_screen.dart';
import 'package:food_monkey/utils/app_style.dart';

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
        primarySwatch:Colors.orange ,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kOrange),
          shape: MaterialStateProperty.all(StadiumBorder()),
          elevation: MaterialStateProperty.all(0),
        ),
        ),
       textTheme: TextTheme(
         bodyText2: TextStyle(
           color: kwhite,
         )
       )
      ),

      home: SplashScreen(),
      routes: {
        LandingScreen.routeName: (context)=> LandingScreen()
      },
    );
  }
}

