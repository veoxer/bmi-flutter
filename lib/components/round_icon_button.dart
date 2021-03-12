import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function change;

  RoundIconButton({@required this.iconData, @required this.change});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: kRoundButtonFillColor,
      onPressed: change,
      elevation: 0.0,
      child: Icon(iconData),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
    );
  }
}
