import 'package:bmi_calculator/componeents/card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../componeents/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, this.resultText});
  final String bmiResult;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "your Result",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: box(
              colour: kActiveCardColor,
              boxCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    "OVERWEIGHT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    resultText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            ontap: () {
              Navigator.pop(context);
//              Navigator.pushNamed(context, '/');
            },
            text: 'RECALCULATOR',
          ),
        ],
      ),
    );
  }
}
