import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function updateCardGender;

  AppCard({@required this.colour, this.cardChild, this.updateCardGender});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: updateCardGender,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
