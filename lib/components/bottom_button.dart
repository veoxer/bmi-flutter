import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String btnLabel;
  final Function onTap;

  BottomButton({this.btnLabel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              btnLabel,
              style: kCalculateBtnTextStyle,
            ),
          ),
        ),
        width: double.infinity,
        height: kBottomAppBarHeight,
        margin: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          color: kBottomAppBarColor,
        ),
      ),
    );
  }
}
