import 'package:flutter/material.dart';

import '../theme.dart';

class EducationCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;

  const EducationCard({
    Key? key,
    this.imageUrl,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Column(
        children: [
          Image.asset(
            imageUrl ?? '',
            height: 88,
            width: 110,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title ?? '',
            textAlign: TextAlign.center,
            style: regularTextStyle,
          )
        ],
      ),
    );
  }
}
