import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 7,
      child: Icon(icon),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
