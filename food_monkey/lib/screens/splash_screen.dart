import 'package:flutter/material.dart';
import 'package:food_monkey/utils/size_cofig.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
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
              
            )
            
            
          ],
        ),
      ),
    );
  }
}
