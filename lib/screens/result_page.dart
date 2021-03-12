import 'file:///D:/Programming/MobileWS/bmi/lib/components/app_card.dart';
import 'package:bmi/components/bottom_button.dart';
import 'package:bmi/screens/result_page_arguments.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmi, this.result, this.interpretation});

  final String bmi;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultPageArguments args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'You Result',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: AppCard(
              colour: kActiveAppCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.result.toUpperCase(),
                    style: kResultLabelStyle,
                  ),
                  Text(
                    args.bmi,
                    style: kResultBMI,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        args.interpretation,
                        style: kBMIDescription,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            btnLabel: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
