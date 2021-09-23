import 'package:flutter/material.dart';
import '../theme.dart';
import 'education_card.dart';
import 'skill_card.dart';

class FooterHome extends StatelessWidget {
  const FooterHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 420,
        ),
        Container(
          padding: const EdgeInsets.only(
            top: 20,
            left: 24,
            right: 24,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            color: whiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills',
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 16,
              ),
              const SkillCard(
                logoUrl: 'assets/images/figma_logo.png',
                titleSkill: 'Figma',
                percentage: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              const SkillCard(
                logoUrl: 'assets/images/java_logo.png',
                titleSkill: 'Java',
                percentage: 70,
              ),
              const SizedBox(
                height: 10,
              ),
              const SkillCard(
                logoUrl: 'assets/images/flutter_logo.png',
                titleSkill: 'Flutter',
                percentage: 50,
              ),
              const SizedBox(
                height: 27,
              ),
              Text(
                'Education',
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        Container(
          color: whiteColor,
          height: 128,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(
                width: 24,
              ),
              EducationCard(
                imageUrl: 'assets/images/education_sd.png',
                title: 'SDN\nPeterongan 1',
              ),
              SizedBox(
                width: 18,
              ),
              EducationCard(
                imageUrl: 'assets/images/education_smp.png',
                title: 'SMPN 1\nJombang',
              ),
              SizedBox(
                width: 18,
              ),
              EducationCard(
                imageUrl: 'assets/images/education_sma.png',
                title: 'SMAN 3\nJombang',
              ),
              SizedBox(
                width: 18,
              ),
              EducationCard(
                imageUrl: 'assets/images/education_college.png',
                title: 'Informatics\nUNESA',
              ),
              SizedBox(
                width: 24,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          color: whiteColor,
          child: Column(
            children: [
              const SizedBox(
                height: 27,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: lightBLueColor,
                    onPrimary: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Call Now',
                    style: whiteTextStyle,
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
