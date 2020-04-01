import 'package:flutter/material.dart';

class box extends StatelessWidget {
  box({@required this.colour, this.boxCard});
  final Color colour;
  final Widget boxCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: boxCard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
