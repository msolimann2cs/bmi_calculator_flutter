// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'constants.dart';

class reusableCardContent extends StatelessWidget {
  const reusableCardContent({super.key, this.newIcon, this.cardText});
  final IconData? newIcon;
  final String? cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          newIcon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          cardText!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
