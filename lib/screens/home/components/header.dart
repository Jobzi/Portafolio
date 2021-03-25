import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio/screens/home/widgets/section_title.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: PhysicalModel(
        color: Colors.grey.shade200.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
        elevation: 10.0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
          ),
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                AntDesign.codesquare,
                color: Colors.black,
              ),
              Spacer(),
              Offstage(
                offstage: !context.isPhone ? true : false,
                child: Text(
                  ">hello, world!_",
                  style: GoogleFonts.inconsolata().copyWith(
                    color: Colors.black,
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Offstage(
                offstage: context.isPhone ? true : false,
                child: Wrap(
                  children: [
                    SectionTitle(
                      numbre: "01.",
                      text: "Acerca de Mi",
                      textColor: Colors.black87,
                    ),
                    SectionTitle(
                      numbre: " 02.",
                      text: "Contacto",
                      textColor: Colors.black87,
                    ),
                    SectionTitle(
                      numbre: " 03.",
                      text: "Trabajos ",
                      textColor: Colors.black87,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
