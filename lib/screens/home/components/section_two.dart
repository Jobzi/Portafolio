import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:portafolio/constant/sized_config.dart';
import 'package:portafolio/screens/home/widgets/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

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
                style: TextStyle(
                    fontFamily: 'Raleway',
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
                    "Prototipo de software médico enfocado a realizar un seguimiento a los estudiantes, docentes y personal de la Universidad de las Fuerzas Armadas ",
                urlString: "",
                tols: "Spring Boot - Angular",
              ),
              CardWork(
                tittle: "Control de Laboratorios",
                content:
                    "Control de laboratorios de computación mediante un calendario electrónico para Universidad de las Fuerzas Armadas sede Latacunga.",
                urlString: "https://github.com/Jobzi/PryAsistencia-Electron",
                tols: "MySql - ElectronJs",
              ),
              CardWork(
                tittle: "Diccionario AR",
                urlString: "",
                content:
                    "Diccionario en inglés utilizando inteligencia artificial para detectar objetos y mostrar la definición.",
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
                urlString: "https://www.fae.mil.ec/",
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
                    "Founder of Yaw-EC, StartUp para introducir a pequeños y medianos comerciantes al comercio electrónico.",
                urlString: "https://yawec.com/",
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

// ignore: must_be_immutable
class CardWork extends StatefulWidget {
  final String tittle, content, tols;
  final List<Color> colors;
  final String urlString;
  CardWork(
      {Key key,
      this.tittle,
      this.content,
      this.tols,
      this.colors,
      this.urlString})
      : super(key: key);

  @override
  _CardWorkState createState() => _CardWorkState();
}

class _CardWorkState extends State<CardWork> {
  Color color = Colors.white54;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => setState(() {
        color = ColorTheme.yellow;
      }),
      onExit: (event) => setState(() {
        color = Colors.white54;
      }),
      child: Stack(
        children: [
          Card(
            color: Color(0xFF0a192f),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                      style: TextStyle(
                          fontFamily: 'Inconsolata',
                          color: color,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.content ?? "Contenido",
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.tols ?? "TOOLS",
                      style: TextStyle(
                          fontFamily: 'Inconsolata',
                          color: Colors.white54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: (widget.urlString != "")
                ? GestureDetector(
                    onTap: () => _launchInBrowser(widget.urlString),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Icon(Icons.open_in_new),
                    ),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
