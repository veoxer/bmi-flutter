import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onPointerDown;
  final Function onPointerUp;
  final Function normalPress;

  RoundIconButton(
      {this.iconData, this.onPointerDown, this.onPointerUp, this.normalPress});

  @override
  Widget build(BuildContext context) {
    return Listener(
      child: RawMaterialButton(
        shape: CircleBorder(),
        fillColor: kRoundButtonFillColor,
        elevation: 0.0,
        child: Icon(iconData),
        constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
        onPressed: normalPress,
      ),
      onPointerDown: onPointerDown,
      onPointerUp: onPointerUp,
    );
  }
}
