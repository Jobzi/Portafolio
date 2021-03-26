import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/constant/sized_config.dart';
import 'package:portafolio/screens/home/widgets/section_title.dart';

class SectionTwo extends StatelessWidget {
  const SectionTwo({Key key}) : super(key: key);

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
            numbre: "02. ",
            text: "Trabajos",
          ),
          SizedBox(
            width: 600,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Mis historial de trabajo es corto, pero eso no me limita a practicar y aprender mucho mas.",
                style: GoogleFonts.raleway().copyWith(
                    color: Color(0xFF5e6668),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.0,
            children: [
              CardWork(
                tittle: "Salud ESPE",
                content:
                    "Prototipo de software medico enfocado a realizar un seguimiento a los estudiantes, doctes y personal de la Universidad de las Fuerzas Armadas ",
                tols: "Spring Boot - Angular",
              ),
              CardWork(
                tittle: "Control de Laboratorios",
                content:
                    "Control de docetentes que hacen uso de laboratorios mediante un calendario electronico para Universidad de las Fuerzas Armadas sede Latacunga",
                tols: "MySql - ElectronJs",
              ),
              CardWork(
                tittle: "Diccionario AR",
                content:
                    "Diccionario en ingles utilizando inteligencia artificial para detectar objetos y mostrar la deficion.",
                tols: "Unity",
              ),
            ],
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10.0,
            children: [
              CardWork(
                tittle: "Portal FAE",
                content: "Rediseño del portal de la FAE",
                tols: "WordPress",
                colors: [
                  Color(0XFF87a08b),
                  Color(0xff5c715e),
                ],
              ),
              CardWork(
                colors: [
                  Color(0XFF87a08b),
                  Color(0xff5c715e),
                ],
                tittle: "Yaw! Ecuador",
                content:
                    "Fourder of Yaw-EC, StartUp para introducir a pequeños y medianos comerciartes al commercio electronico",
                tols: "Flutter Mobile",
              ),
            ],
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

class CardWork extends StatefulWidget {
  final String tittle, content, tols;
  final List<Color> colors;
  const CardWork({Key key, this.tittle, this.content, this.tols, this.colors})
      : super(key: key);

  @override
  _CardWorkState createState() => _CardWorkState();
}

class _CardWorkState extends State<CardWork> {
  Color color = Colors.white54;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => setState(() {
        color = ColorTheme.yellow;
      }),
      onExit: (event) => setState(() {
        color = Colors.white54;
      }),
      child: Card(
        color: Color(0xFF0a192f),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5.0,
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: widget.colors ??
                    [
                      Color(0XFF253532),
                      Color(0XFF517f83),
                      //Colors.grey[900],
                    ]),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.tittle ?? "Title",
                  style: GoogleFonts.inconsolata().copyWith(
                      color: color, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.content ?? "Contenido",
                  style: GoogleFonts.raleway().copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.tols ?? "TOOLS",
                  style: GoogleFonts.inconsolata().copyWith(
                      color: Colors.white54, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
