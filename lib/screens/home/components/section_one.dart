import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/constant/sized_config.dart';
import 'package:portafolio/screens/home/widgets/section_title.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({Key key}) : super(key: key);

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
          SectionTitle(
            numbre: "01. ",
            text: "Acerca de Mi",
          ),
          Wrap(
            children: [
              SizedBox(
                width: 600,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "¡Hola!, Soy Jipson Murillo desarrollador de Software del ombligo del mundo Ecuador. Tengo un gusto por el desarrollo de software. Mi gusto por el desarrollo comenzó desde los videojuegos de saber cómo funcionaba. El dia de hoy aun sigo jugando a los videojuegos como el Valorant me parece tan interesante como la industria del e-sports han llegado a transformar esta industria. Además tengo muchas aficiones como practicar el ciclismo, me gusta mucho nadar, tomar fotografías de todos los lugares que visito. Mi experiencia de desarrollo como tal comienza como tal desde 2015 como Ecuador  un país tan pequeño y el desarrollo de software no tan demandado me pareció una skill que cada día es más importante saber, me gusto mucho que el día de hoy sigo practicando y estudiando.",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(28.0),
                child: PhysicalModel(
                  color: ColorTheme.yellow.withOpacity(0.4),
                  elevation: 18.0,
                  borderRadius: BorderRadius.circular(20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage('assets/yo.png'),
                      fit: BoxFit.cover,
                      height: 250,
                      width: 250,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 600,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Estas son algunas de las tecnologías con las que he trabajado recientemente:",
                style: GoogleFonts.raleway().copyWith(
                    color: Color(0xFF5e6668),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10.0,
                children: [
                  Text(
                    "😍 Flutter",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😃 JavaScript",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😃 TypeScript",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😏 node.js",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "☘️ Spring Boot",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😅 React",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😅 Angular",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "😋 WordPress",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "🔥 FireBase",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "⚡ MongoDB",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "🧿 MySql, Postgresql",
                    style: GoogleFonts.raleway().copyWith(
                        color: Color(0xFF5e6668),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Offstage(
            offstage: context.isPhone ? true : false,
            child: SizedBox(
              height: getProportionateScreenHeight(100),
            ),
          ),
        ],
      ),
    );
  }
}
