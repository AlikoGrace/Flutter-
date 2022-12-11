import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPress});
  final IconData icon;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0,
      fillColor: Color(0xff4c4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 46,
        height: 46,
      ),
      child: Icon(icon),
    );
  }
}
