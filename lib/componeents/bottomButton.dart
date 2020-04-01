import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.ontap, this.text});
  final String text;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0XFFEB1555),
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
