import 'package:flutter/material.dart';
import 'package:portafolio/constant/Colors.dart';

class AnimatedButtom extends StatelessWidget {
  const AnimatedButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0Xfffab73d)),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            "Get in Touch",
            style: TextStyle(
              fontFamily: 'Inconsolata',
              color: ColorTheme.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
