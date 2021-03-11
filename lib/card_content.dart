import 'package:flutter/material.dart';

import 'constants.dart';

class CardContent extends StatelessWidget {
  final IconData iconData;
  final String iconText;

  CardContent({@required this.iconData, @required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kContentLabelStyle,
        ),
      ],
    );
  }
}
