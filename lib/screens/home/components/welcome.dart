import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/constant/sized_config.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Offstage(
            offstage: context.isPhone ? true : false,
            child: SizedBox(
              height: getProportionateScreenHeight(220),
            ),
          ),
          Text(
            "Hola, mi nombre es",
            style: GoogleFonts.inconsolata().copyWith(
                color: ColorTheme.yellow,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Jipson Murillo.",
            style: GoogleFonts.raleway().copyWith(
                color: Colors.white,
                fontSize: 100,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Tengo una gran aficion por aprender constantemente \nme gusta salir a pasear, subir montañas, intento ser mejor cada dia.",
            style: GoogleFonts.raleway().copyWith(
                color: Color(0xFF5e6668),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0Xfffab73d)),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Get in Touch",
                style: GoogleFonts.inconsolata(
                  color: ColorTheme.yellow,
                ),
              ),
            ),
          ),
          Offstage(
            offstage: context.isPhone ? true : false,
            child: SizedBox(
              height: getProportionateScreenHeight(70),
            ),
          ),
        ],
      ),
    );
  }
}
