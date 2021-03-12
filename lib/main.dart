import 'package:bmi/round_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'app_card.dart';
import 'card_content.dart';
import 'constants.dart';
import 'gender.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCardGender;
  int height = 170;
  int wight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: AppCard(
                      colour: selectedCardGender == Gender.MALE
                          ? kActiveAppCardColor
                          : kInactiveAppCardColor,
                      cardChild: CardContent(
                        iconData: FontAwesomeIcons.mars,
                        iconText: 'MALE',
                      ),
                      updateCardGender: () {
                        setState(() {
                          selectedCardGender = Gender.MALE;
                        });
                      }),
                ),
                Expanded(
                  child: AppCard(
                      colour: selectedCardGender == Gender.FEMALE
                          ? kActiveAppCardColor
                          : kInactiveAppCardColor,
                      cardChild: CardContent(
                        iconData: FontAwesomeIcons.venus,
                        iconText: 'FEMALE',
                      ),
                      updateCardGender: () {
                        setState(() {
                          selectedCardGender = Gender.FEMALE;
                        });
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: AppCard(
              colour: kActiveAppCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kContentLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kContentMainTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kContentLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kSliderInactiveTrackColor,
                      thumbColor: kSliderThumbColor,
                      overlayColor: kSliderOverlayColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 90.0,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: AppCard(
                    colour: kActiveAppCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kContentLabelStyle,
                        ),
                        Text(
                          wight.toString(),
                          style: kContentMainTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              change: () {
                                setState(() {
                                  wight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              change: () {
                                setState(() {
                                  wight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: AppCard(
                    colour: kActiveAppCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kContentLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kContentMainTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              iconData: FontAwesomeIcons.minus,
                              change: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              iconData: FontAwesomeIcons.plus,
                              change: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: kBottomAppBarHeight,
            margin: EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              color: kBottomAppBarColor,
            ),
          )
        ],
      ),
    );
  }
}
