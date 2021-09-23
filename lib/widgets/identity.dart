import 'package:flutter/material.dart';

import '../theme.dart';

class Identity extends StatelessWidget {
  final String? iconUrl1;
  final String? iconUrl2;
  final String? title1;
  final String? title2;

  const Identity({
    Key? key,
    this.iconUrl1,
    this.iconUrl2,
    this.title1,
    this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconUrl1 ?? '',
          height: 14,
          color: lightBLueColor,
        ),
        Expanded(
          flex: 5,
          child: Text(
            '  $title1',
            style: desTextStyle,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Image.asset(
          iconUrl2 ?? '',
          height: 14,
          color: lightBLueColor,
        ),
        Expanded(
          flex: 5,
          child: Text(
            '  $title2',
            style: desTextStyle,
          ),
        ),
      ],
    );
  }
}
