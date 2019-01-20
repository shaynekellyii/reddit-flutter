import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  TextWithIcon(
      {Key key,
      @required this.size,
      @required this.text,
      @required this.icon,
      @required this.paddingRight});

  final double size;
  final String text;
  final IconData icon;
  final double paddingRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: paddingRight,
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: Icon(
              icon,
              size: size,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: size,
            ),
          ),
        ],
      ),
    );
  }
}
