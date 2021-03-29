import 'package:flutter/material.dart';

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
        style: TextStyle(
          fontFamily: 'Inconsolata',
          color: Colors.green,
          fontSize: 20,
        ),
        children: [
          TextSpan(
            text: text ?? "Data",
            style: TextStyle(
              fontFamily: 'Inconsolata',
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
