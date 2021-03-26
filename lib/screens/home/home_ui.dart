import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/screens/home/components/section_one.dart';
import 'package:portafolio/screens/home/components/section_two.dart';
import 'widgets/icon_buttom.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'components/header.dart';
import 'package:get/get.dart';
import 'components/welcome.dart';
import 'package:animate_do/animate_do.dart' show BounceInDown;

class HomeUI extends StatelessWidget {
  const HomeUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: buildLinearGradient(),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    BounceInDown(child: Header()),
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
      ),
    );
  }

  LinearGradient buildLinearGradient() {
    return LinearGradient(
        colors: [
          ColorTheme.primary,
          Color(0xFF2f4c58),
        ],
        //begin: FractionalOffset(0.0, 1.0),
        end: FractionalOffset(2.0, 0.0),
        //stops: [0.0, 1.0],
        tileMode: TileMode.clamp);
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
              " jipsonmurillo@gmail.com",
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
            IconButtom(
              iconData: Feather.instagram,
              urlString: "https://www.instagram.com/jipson_n/",
            ),
            IconButtom(
              iconData: Feather.facebook,
              urlString: "https://www.facebook.com/Jobzi1/",
            ),
            IconButtom(
              iconData: Feather.github,
              urlString: "https://github.com/Jobzi",
            ),
            IconButtom(
              iconData: Feather.linkedin,
              urlString:
                  "https://www.linkedin.com/in/jipson-murillo-867b24122/",
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
