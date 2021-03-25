import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/screens/home/components/section_one.dart';
import 'package:portafolio/screens/home/components/section_two.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'components/header.dart';
import 'package:get/get.dart';
import 'components/welcome.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.primary.withOpacity(0.9),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 60),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  WelcomeSection(),
                  SectionOne(),
                  SectionTwo(),
                ],
              ),
            ),
          ),
          PositiodedLeft(),
          PositionedRight(),
        ],
      ),
    );
  }
}

class PositionedRight extends StatelessWidget {
  const PositionedRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
            quarterTurns: -1,
            child: Text(
              " jipsonmurillo@gmai.com",
              style: GoogleFonts.inconsolata(wordSpacing: 5).copyWith(
                color: ColorTheme.yellow,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: -1,
            child: Text("________________________",
                style: TextStyle(
                  color: ColorTheme.yellow,
                )),
          ),
        ],
      ),
    );
  }
}

class PositiodedLeft extends StatelessWidget {
  const PositiodedLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      left: 20,
      child: Offstage(
        offstage: (context.isPhone) ? true : false,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Feather.instagram,
                color: ColorTheme.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Feather.facebook,
                color: ColorTheme.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Feather.github,
                color: ColorTheme.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Feather.linkedin,
                color: ColorTheme.yellow,
              ),
            ),
            RotatedBox(
              quarterTurns: -1,
              child: Text("________________________",
                  style: TextStyle(
                    color: ColorTheme.yellow,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
