import 'package:flutter/material.dart';

import '../theme.dart';
import 'identity.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/profile.png',
                width: 120,
                height: 140,
              ),
              Text(
                'Achmad Yusuf Bagus Setiawan',
                style: headerTextStyle,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Student of Universitas\nNegeri Surabaya',
                style: desTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              const Identity(
                iconUrl1: 'assets/icons/icon_calendar.png',
                title1: 'May 6th, 2000',
                iconUrl2: 'assets/icons/icon_call.png',
                title2: '089123456789',
              ),
              const SizedBox(
                height: 10,
              ),
              const Identity(
                iconUrl1: 'assets/icons/icon_place.png',
                title1: 'Jombang, East Java',
                iconUrl2: 'assets/icons/icon_email.png',
                title2: 'detsec14@gmail.com',
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: lightBLueColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Helo, I’m Yusuf an mobile app developer with'
                ' passion for technology. I am currently learning'
                ' mobile app developer at my college. ',
                style: desTextStyle,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
