import 'package:flutter/material.dart';

import '../theme.dart';

class SkillCard extends StatelessWidget {
  final String? logoUrl;
  final String? titleSkill;
  final int percentage;
  const SkillCard({
    Key? key,
    this.logoUrl,
    this.titleSkill,
    this.percentage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Image.asset(
          logoUrl ?? '',
          width: 28,
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: sizeWidth - 2 * 24 - 58,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titleSkill ?? '',
                    style: regularTextStyle,
                  ),
                  Text(
                    '$percentage%',
                    style: desTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Stack(
                children: [
                  Container(
                    height: 3,
                    width: sizeWidth - 2 * 24 - 58,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    height: 3,
                    width: percentage * (sizeWidth - 2 * 24 - 58) / 100,
                    decoration: BoxDecoration(
                      color: lightBLueColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
