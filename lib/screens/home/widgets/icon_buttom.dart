import 'package:flutter/material.dart';
import 'package:portafolio/constant/Colors.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtom extends StatefulWidget {
  final IconData iconData;
  final String urlString;
  const IconButtom({Key ey, this.iconData, this.urlString});

  @override
  _IconButtomState createState() => _IconButtomState();
}

class _IconButtomState extends State<IconButtom> {
  Color colorIcon = ColorTheme.yellow;

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
    return GestureDetector(
      onTap: () => setState(() {
        _launchInBrowser(widget.urlString);
      }),
      child: MouseRegion(
        onHover: (event) => setState(() {
          colorIcon = Colors.white;
        }),
        onExit: (event) => setState(() {
          colorIcon = ColorTheme.yellow;
        }),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            widget.iconData ?? Icons.ac_unit_outlined,
            color: colorIcon,
          ),
        ),
      ),
    );
  }
}
