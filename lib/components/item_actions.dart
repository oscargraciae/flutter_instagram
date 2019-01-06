import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.heart,
              ),
              SizedBox(width: 16.0),
              Icon(
                FontAwesomeIcons.comment,
              ),
              SizedBox(width: 16.0),
              Icon(
                FontAwesomeIcons.paperPlane,
              ),
            ],
          ),
          Icon(FontAwesomeIcons.bookmark)
        ],
      ),
    );
  }
}