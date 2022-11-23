import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_monkey/utils/size_cofig.dart';
import 'landing_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;



  @override
  void initState(){
    timer = Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingScreen.routeName);
      //shows where it should go to after the splash screen
    });

    super.initState();
  }


  Widget build(BuildContext context) {

    Sizer size = Sizer(context: context);
    return Scaffold(
      body: Container(
        height: size.parentHeight(),
        width: size.parentWidth(),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              //double.infinity means as big as it's parent
              width: double.infinity,
              child: Image.asset("assets/images/virtual/splashIcon.png"),

            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/virtual/MealMonkeyLogo.png"),

            ),



          ],
        ),
      ),
    );
  }
}

