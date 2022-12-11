import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.textLabel, required this.myOnTap});

  final String textLabel;
  final VoidCallback myOnTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              textLabel,
              style: kLargeButtonTextStyle,
            ),
          ),
        ),
        padding: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(color: kBottomContainerColor),
      ),
    );
  }
}
