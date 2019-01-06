import 'package:flutter/material.dart';

class ItemLikes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Les gusta a albertoesp y 342,923 personas más',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}