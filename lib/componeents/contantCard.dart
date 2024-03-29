import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class contantOfBox extends StatelessWidget {
  contantOfBox({@required this.icon, this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kStyle,
        )
      ],
    );
  }
}
