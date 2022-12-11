import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //this to avoid repeating oneself
  ReusableCard({required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  //voidcallback means void funtion, Function wasn't working

  //final makes it to be set once and cannot be
  //use const when you can work it at the time of the compilation.
  //for something that requires our app to be currently running
  //like when color actually receives a value from the example above
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
