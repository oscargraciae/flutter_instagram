import 'package:flutter/material.dart';

class ItemContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Image.network('http://lorempixel.com/800/800/nature/'),
    );
  }
}