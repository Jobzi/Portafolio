import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  final String numbre;
  final String text;
  final Color textColor;
  const SectionTitle({Key key, this.numbre, this.text, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: numbre ?? "1.",
        style: GoogleFonts.inconsolata().copyWith(
            color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: text ?? "Data",
            style: GoogleFonts.inconsolata().copyWith(
              color: textColor ?? Colors.white,
              fontSize: 18,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
