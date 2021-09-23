import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme.dart';
import '../widgets/footer_home.dart';
import '../widgets/header_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: lightBLueColor),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Curriculum Vitae',
          style: whiteTextStyle,
        ),
        backgroundColor: lightBLueColor,
      ),
      body: Stack(
        children: const [
          HeaderHome(),
          FooterHome(),
        ],
      ),
    );
  }
}
